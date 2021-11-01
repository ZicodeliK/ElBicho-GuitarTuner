.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([F)V
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


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIII[F)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoSliceStride:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$n2d2:I

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoRowStride:I

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$lastSlice:I

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoSliceStride:I

    mul-int/2addr v2, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoSliceStride:I

    mul-int v3, v0, v1

    const/4 v1, 0x1

    :goto_1c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$n2d2:I

    if-ge v1, v4, :cond_47

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoRowStride:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$twoRowStride:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    aget v7, v7, v5

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    neg-float v5, v5

    aput v5, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4a
    return-void
.end method
