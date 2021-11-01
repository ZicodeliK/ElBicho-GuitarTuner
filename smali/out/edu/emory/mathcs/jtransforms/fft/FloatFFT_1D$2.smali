.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$twon:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$lastIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$offa:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$twon:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$lastIdx:I

    if-ge v0, v1, :cond_2f

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$offa:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$twon:I

    sub-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$twon:I

    rem-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$a:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$a:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$offa:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$a:[F

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$a:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;->val$offa:I

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    aget v1, v4, v1

    neg-float v1, v1

    aput v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2f
    return-void
.end method
