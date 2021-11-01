.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;II[[D)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$a:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$lastRow:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$3;->val$a:[[D

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method
