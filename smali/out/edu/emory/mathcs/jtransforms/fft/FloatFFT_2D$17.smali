.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[FZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$a:[[F

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$lastRow:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$a:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method
