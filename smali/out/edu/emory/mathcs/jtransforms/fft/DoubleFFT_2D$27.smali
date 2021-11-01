.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(II[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$icr:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$isgn:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$n0:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$nthreads:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$icr:I

    if-nez v0, :cond_41

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$n0:I

    :goto_b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_7e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_24
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$n0:I

    :goto_26
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_7e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_26

    :cond_41
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$isgn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$n0:I

    :goto_48
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_7e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_48

    :cond_61
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$n0:I

    :goto_63
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_7e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$a:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$27;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_63

    :cond_7e
    return-void
.end method
