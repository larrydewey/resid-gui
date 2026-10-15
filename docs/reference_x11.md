# `src/x11/` — X11 Client

Pure Resid implementation of the X11 protocol client. No generated bindings; hand-written encoders/decoders for the minimal request/event set needed for a self-rendering window.

## Modules

| Module | Purpose |
|--------|---------|
| `connect.resid` | Connection handshake: `x11_open`, `auth_none`, `auth_cookie`, `Setup` parsing |
| `setup.resid` | `Setup` type and decoder for the server's initial reply |
| `requests.resid` | Request encoders: `CreateWindow`, `ChangeWindowAttributes`, `MapWindow`, `CreateGC`, `PutImage`, `ShmPutImage`, `InternAtom`, `ChangeProperty`, `QueryExtension` |
| `events.resid` | Event decoders: `KeyPress`, `KeyRelease`, `ButtonPress`, `ButtonRelease`, `MotionNotify`, `Expose`, `ConfigureNotify`, `ClientMessage` → `Event` |
| `conn.resid` | `Conn` state: next resource id, atom cache, parsed `Setup` |
| `wire.resid` | Byte-level encoder (`ListBuf(Int)`) and decoder over `List(Int)` |
| `stream.resid` | `resid_disp_recv` loop, buffering, event queue |

## Types

```resid
type Setup = { ... }  // parsed server reply
type Conn  = { Setup setup; Int next_id; Int atom_wm_name; }
type Session = { Int fd; Setup setup; }
type Auth = { Str name; List(Int) data; }
```

## Functions

```resid
// connect.resid
pub Session x11_open(Auth auth)
pub Auth auth_none()
pub Auth auth_cookie(Str name, List(Int) data)

// setup.resid
pub Setup parse_setup(List(Int) bytes)
pub Int setup_word(List(Int) bs, Int i)
pub Int setup_word16(List(Int) bs, Int i)

// requests.resid
pub List(Int) req_create_window(Conn c, Int wid, Int pid, Int x, Int y, Int w, Int h, Int visual, Int mask, List(Int) vals)
pub List(Int) req_map_window(Int wid)
pub List(Int) req_create_gc(Conn c, Int gc, Int drawable, Int mask, List(Int) vals)
pub List(Int) req_put_image(Conn c, Int drawable, Int gc, Int w, Int h, Int x, Int y, Int depth, Int format, List(Int) data)
pub List(Int) req_shm_put_image(Conn c, Int drawable, Int gc, Int w, Int h, Int x, Int y, Int shmseg, Int offset, Int depth, Int format)
pub List(Int) req_intern_atom(Conn c, Bool only_if_exists, Str name)
pub List(Int) req_change_property(Conn c, Int mode, Int window, Int property, Int type, Int format, Int len, List(Int) data)

// events.resid
pub Event decode_event(List(Int) bytes)  // 32-byte event → Event

// conn.resid
pub Conn conn_new(Setup s)
pub Int conn_window_id(Conn c)
pub Conn conn_advance(Conn c, Int n)
```

## MIT-SHM

`resid_disp_shm_new(bytes)` creates a shared memory segment. Its fd is passed via `ShmAttachFd` in the `CreateWindow` sequence. Frames are written with `resid_disp_shm_put` and presented with `ShmPutImage` (no socket copy).