.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse([FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:[F

.field final synthetic val$ak:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[FI[F)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$a:[F

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$ak:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$lastIdx:I

    if-ge v0, v1, :cond_2f

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$a:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$offa:I

    add-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$ak:[F

    aget v1, v6, v1

    mul-float/2addr v1, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;->val$ak:[F

    aget v2, v6, v2

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    aput v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2f
    return-void
.end method
