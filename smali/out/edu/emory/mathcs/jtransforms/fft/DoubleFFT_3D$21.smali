.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DI)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twon3:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$firstSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$lastSlice:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twoSliceStride:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$a:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twoRowStride:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twon3:I

    new-array v2, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$firstSlice:I

    :goto_7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$lastSlice:I

    if-lt v0, v1, :cond_4e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twoSliceStride:I

    mul-int v4, v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_4b

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    invoke-static {v5, v6, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v5

    invoke-virtual {v5, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$a:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twoRowStride:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;->val$twon3:I

    invoke-static {v2, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_4e
    return-void
.end method
