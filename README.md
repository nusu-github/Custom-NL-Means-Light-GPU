# Custom-NL-Means-Light-GPU

Nilpo氏のNL-Means_Light_GPUプラグインの改造版

## 動作条件

- Windows10 以上
- SSE2対応 CPU
- DirectX12対応 GPU
- Aviutl 1.10
- [DirectX End-User Runtimes](https://www.microsoft.com/ja-jp/download/details.aspx?id=35)(多分)

## 使用方法

### 輝度時間・色差時間

- 輝度成分と色差成分の処理で参照する時間軸方向の範囲

### 輝度分散・色差分散

- 小さい値にするほど色が近いピクセルへ偏った重み配分になりノイズが残りやすくなります。
- 大きい値にするほど重みが平均化され、平均ぼかしに近い効果になります。

### 保護

- 数値が大きいほど低周波成分保護の効果が強くなります。
- 0なら低周波成分保護の処理を行いません(従来のNL-Meansと同じ効果)

### Use UpdateSurface

- システムメモリ→ビデオメモリ間の転送方法の選択
- 多少処理速度に差があるかも(どちらが速いかは環境による)

色差空間と色差時間を0にすると色差成分の処理をスキップするので高速になります。

なお、今まであったアダプター機能は機能していないと思われるので外しました。

今後使用したいGPUを変更する場合はWindowsの標準機能を使用してください。

## 改造点

古いDXSDKを捨て、代わりにD3D9On12とDirectXMathに変更。

DirectX9Exを使用するようにしています。

これで高速化するってことはないと思いますがビルド環境が新しくはなっているので最適化で早くなるかもしれません。

## ライセンス

[MIT](https://opensource.org/licenses/mit-license.php)

しかし、本作品はNilpo氏のNL-Means_Light_GPUの改造である事を留意してください。
