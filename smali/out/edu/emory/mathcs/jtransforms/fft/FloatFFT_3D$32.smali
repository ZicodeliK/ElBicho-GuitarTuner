.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$n2d2:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIIII[F)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoSliceStride:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$n2d2:I

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoRowStride:I

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twon3:I

    iput-object p8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 13

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$lastSlice:I

    if-ge v0, v1, :cond_68

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoSliceStride:I

    mul-int v3, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoSliceStride:I

    mul-int v4, v0, v1

    const/4 v1, 0x1

    :goto_1d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$n2d2:I

    if-ge v1, v2, :cond_65

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    sub-int/2addr v2, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoRowStride:I

    mul-int/2addr v2, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twoRowStride:I

    mul-int/2addr v5, v1

    add-int v6, v3, v2

    const/4 v2, 0x0

    :goto_31
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v2, v7, :cond_62

    mul-int/lit8 v7, v2, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twon3:I

    sub-int/2addr v8, v7

    add-int v9, v4, v5

    add-int/2addr v7, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$a:[F

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twon3:I

    rem-int v10, v8, v10

    add-int/2addr v10, v6

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$a:[F

    aget v11, v11, v7

    aput v11, v9, v10

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$a:[F

    add-int/lit8 v8, v8, 0x1

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$twon3:I

    rem-int/2addr v8, v10

    add-int/2addr v8, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;->val$a:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v10, v7

    neg-float v7, v7

    aput v7, v9, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_68
    return-void
.end method
