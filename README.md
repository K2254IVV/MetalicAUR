<img align="right" src="https://raw.githubusercontent.com/K2254IVV/MetalicAUR/refs/heads/main/files/logo.svg" width="375" alt="">

# MetalicAUR - The analog of Original AUR with "other" Soft
The base of packages:
 - ArchTools (Lastest)
 
 - GameScope (adding..)

---

how to add MetalicAUR to pacman?:
add this to /etc/pacman.conf:
```bash
[MetalicAUR]
SigLevel = Optional TrustAll
Server = https://k2254ivv.github.io/MetalicAUR/x86_64
```
or
```bash
echo -e "\n[MetalicAUR]\nSigLevel = Optional TrustAll\nServer = https://github.com/K2254IVV/MetalicAUR/blob/main/x86_64/" | sudo tee -a /etc/pacman.conf
```
