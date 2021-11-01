.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;
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

.field final synthetic val$temp2:[[[F

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twoSliceStride:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$temp2:[[[F

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$a:[F

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twoRowStride:I

    iput p8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twon3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 9

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$firstSlice:I

    :goto_3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$lastSlice:I

    if-ge v0, v1, :cond_2b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twoSliceStride:I

    mul-int v3, v0, v1

    move v1, v2

    :goto_c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_28

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$temp2:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$a:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twoRowStride:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;->val$twon3:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2b
    return-void
.end method
