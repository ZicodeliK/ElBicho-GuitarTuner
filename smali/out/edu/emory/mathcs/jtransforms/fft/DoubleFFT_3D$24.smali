.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;
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


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[D)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$twoSliceStride:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$twoRowStride:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$firstSlice:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$lastSlice:I

    if-ge v0, v1, :cond_75

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$twoSliceStride:I

    mul-int v5, v0, v1

    move v1, v2

    :goto_16
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_72

    mul-int/lit8 v6, v1, 0x2

    move v3, v2

    :goto_21
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v3, v7, :cond_43

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$twoRowStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$a:[D

    aget-wide v9, v9, v7

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$a:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, v9, v7

    aput-wide v9, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_43
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v2

    :goto_4d
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v3, v7, :cond_6f

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$twoRowStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$a:[D

    aget-wide v10, v4, v8

    aput-wide v10, v9, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;->val$a:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v10, v4, v8

    aput-wide v10, v9, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_75
    return-void
.end method
