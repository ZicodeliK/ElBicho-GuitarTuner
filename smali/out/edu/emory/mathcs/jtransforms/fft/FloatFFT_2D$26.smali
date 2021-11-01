.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(II[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[FZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$icr:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$isgn:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$n0:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$nthreads:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$a:[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$icr:I

    if-nez v0, :cond_4b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$n0:I

    :goto_b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_92

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_29
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$n0:I

    :goto_2b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_92

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_2b

    :cond_4b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$isgn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$n0:I

    :goto_52
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_92

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_52

    :cond_70
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$n0:I

    :goto_72
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_92

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_72

    :cond_92
    return-void
.end method
