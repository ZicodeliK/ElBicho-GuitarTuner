.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([[F)V
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


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$a:[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$lastRow:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;->val$a:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method
