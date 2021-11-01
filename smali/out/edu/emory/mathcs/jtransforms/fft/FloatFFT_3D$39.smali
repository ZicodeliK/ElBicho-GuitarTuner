.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$twon3:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$twon3:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$lastSlice:I

    if-ge v0, v1, :cond_69

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int v3, v1, v2

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_66

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    rem-int v4, v2, v4

    const/4 v2, 0x1

    :goto_2e
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v2, v5, :cond_63

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$twon3:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    neg-float v7, v7

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    add-int/lit8 v5, v5, -0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_2e

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_69
    return-void
.end method
