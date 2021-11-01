.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;
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

.field final synthetic val$scale:Z

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZI)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twon3:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$firstSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$lastSlice:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twoSliceStride:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$a:[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$scale:Z

    iput p8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twoRowStride:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    const/4 v8, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twon3:I

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$firstSlice:I

    :goto_7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$lastSlice:I

    if-lt v0, v1, :cond_50

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twoSliceStride:I

    mul-int v4, v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_4d

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    invoke-static {v5, v6, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v5

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$scale:Z

    invoke-virtual {v5, v2, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$a:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twoRowStride:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;->val$twon3:I

    invoke-static {v2, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_50
    return-void
.end method
