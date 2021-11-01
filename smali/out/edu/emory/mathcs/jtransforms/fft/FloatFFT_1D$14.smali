.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse2([FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$ak:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[F)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$lastIdx:I

    if-ge v0, v1, :cond_4c

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    aget v3, v3, v1

    neg-float v3, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v4

    aget v4, v4, v2

    mul-float/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    aget v4, v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    aget v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    aget v6, v6, v2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v4, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;->val$ak:[F

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4c
    return-void
.end method
