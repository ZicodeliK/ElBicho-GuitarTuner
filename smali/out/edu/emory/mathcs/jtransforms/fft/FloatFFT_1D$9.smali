.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward([FI)V
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
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F[F)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$offa:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$ak:[F

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$lastIdx:I

    if-ge v0, v1, :cond_33

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$offa:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$ak:[F

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$a:[F

    aget v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v1

    mul-float/2addr v5, v6

    aput v5, v4, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$ak:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->val$a:[F

    aget v3, v4, v3

    neg-float v3, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v4

    aget v4, v4, v2

    mul-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_33
    return-void
.end method
