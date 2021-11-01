.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;
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

.field final synthetic val$n2d2:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$n2d2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$firstSlice:I

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$lastSlice:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    rem-int v3, v1, v3

    move v1, v2

    :goto_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$n2d2:I

    if-ge v1, v4, :cond_83

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget v7, v7, v2

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget v7, v7, v2

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget v7, v7, v8

    neg-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v4, v7, v4

    aget v4, v4, v8

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_87
    return-void
.end method
