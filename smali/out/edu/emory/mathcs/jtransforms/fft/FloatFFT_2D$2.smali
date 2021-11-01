.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$rowStride:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[F)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$firstColumn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$lastColumn:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$rowStride:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$firstColumn:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$lastColumn:I

    if-ge v0, v1, :cond_63

    mul-int/lit8 v4, v0, 0x2

    move v1, v2

    :goto_14
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_35

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$rowStride:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$a:[F

    aget v7, v7, v6

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$a:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_35
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v1, v2

    :goto_3f
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_60

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$rowStride:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$a:[F

    aget v8, v3, v5

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;->val$a:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v7, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_63
    return-void
.end method
