.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([FZ)V
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

.field final synthetic val$scale:Z

.field final synthetic val$temp:[[F


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F[FZ)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$firstColumn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$lastColumn:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$temp:[[F

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$a:[F

    iput-boolean p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$firstColumn:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$lastColumn:I

    if-ge v0, v1, :cond_48

    mul-int/lit8 v2, v0, 0x2

    const/4 v1, 0x0

    :goto_9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_36

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$temp:[[F

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$a:[F

    aget v6, v6, v4

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$temp:[[F

    aget-object v5, v5, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_36
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$temp:[[F

    aget-object v2, v2, v0

    iget-boolean v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_48
    return-void
.end method
