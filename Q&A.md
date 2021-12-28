# Q&A

## 遅い or 急に遅くなる

理由は様々考えられますがよくあったのが

- デコードが遅い
- 2gpu構成のノートブックで内蔵GPU以外を使う

があります。

デコードが遅いのは諦めください。CPUとかメモリ等を最新のいいものにすればある程度改善すると思います。

2gpu構成のノートブックで内蔵GPU以外を使わないでください。多分ほぼ確定で遅くなります。

最近のCPUなら内蔵GPUの性能もかなりいいので常識的な設定でフルHDぐらいの動画なら問題ないと思います

また、急に遅くなることがあるかもしれませんが、原因不明です。

再現方法としてAviutlのメインウインドウ以外に触ると高確率でCPUの使用率が上がってGPUの使用率が下がります。

これもメモリ系じゃないかなと疑っていますがちゃんと調べていないので分からないです。

(ReadTextureMode3、WriteTextureMode3が原因じゃないかなとも疑っています。)