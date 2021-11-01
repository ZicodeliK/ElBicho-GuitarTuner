.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V
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

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F[F)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$lastIdx:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$ak:[F

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$isign:I

    if-lez v0, :cond_55

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$firstIdx:I

    :goto_6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$offa:I

    add-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$ak:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v6, v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v7, v7, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v8

    aget v8, v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$ak:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v3, v6, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v2

    mul-float/2addr v3, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v4, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v1, v6, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    aput v1, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$firstIdx:I

    :goto_57
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$offa:I

    add-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$ak:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v6, v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v7, v7, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v8

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$ak:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v3, v6, v3

    neg-float v3, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v2

    mul-float/2addr v3, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->val$a:[F

    aget v4, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v1, v6, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    aput v1, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_a7
    return-void
.end method
