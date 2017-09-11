## Dicas

### Corrigindo partição ntfs que não quer ser montada

```sh
sudo ntfsfix -d /dev/sdb2 
```

> Foi usado /dev/sdb2 mas deve ser usada a partição problemática no lugar.
