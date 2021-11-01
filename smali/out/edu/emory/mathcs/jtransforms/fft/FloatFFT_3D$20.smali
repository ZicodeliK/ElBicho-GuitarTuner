.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([[[FZ)V
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

.field final synthetic val$n2d2:I

.field final synthetic val$newn3:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[F)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$n2d2:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$newn3:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 11

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$lastSlice:I

    if-ge v0, v1, :cond_65

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int v3, v1, v2

    const/4 v1, 0x1

    :goto_16
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$n2d2:I

    if-ge v1, v2, :cond_62

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    sub-int v4, v2, v1

    const/4 v2, 0x0

    :goto_23
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v2, v5, :cond_5f

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$newn3:I

    sub-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$a:[[[F

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$newn3:I

    rem-int v8, v6, v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$a:[[[F

    aget-object v9, v9, v0

    aget-object v9, v9, v1

    aget v9, v9, v5

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$a:[[[F

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    add-int/lit8 v6, v6, 0x1

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$newn3:I

    rem-int/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    neg-float v5, v5

    aput v5, v7, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_65
    return-void
.end method
