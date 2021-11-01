.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[DIZ)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$icr:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iput-boolean p8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3d9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$n0:I

    :goto_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_7c0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$icr:I

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    :goto_14
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_49
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_24e

    const/4 v1, 0x0

    :goto_53
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3d4

    const/4 v2, 0x0

    :goto_5c
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_123

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v8, v8, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v8, v8, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v6, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5c

    :cond_123
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v2, 0x0

    :goto_183
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_24a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_183

    :cond_24a
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_53

    :cond_24e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_350

    const/4 v1, 0x0

    :goto_258
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_2be

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_258

    :cond_2be
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_2ea
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3d4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ea

    :cond_350
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d4

    const/4 v1, 0x0

    :goto_35a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_38e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_35a

    :cond_38e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_3a0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3d4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a0

    :cond_3d4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_7

    :cond_3d9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$n0:I

    :goto_3db
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_7c0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$icr:I

    if-nez v1, :cond_404

    const/4 v1, 0x0

    :goto_3e8
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_422

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e8

    :cond_404
    const/4 v1, 0x0

    :goto_405
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_422

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_405

    :cond_422
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_62f

    const/4 v1, 0x0

    :goto_42c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_7bb

    const/4 v2, 0x0

    :goto_435
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_4fc

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v8, v8, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v8, v8, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v4, v6, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_435

    :cond_4fc
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v2, 0x0

    :goto_564
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_62b

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_564

    :cond_62b
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_42c

    :cond_62f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_735

    const/4 v1, 0x0

    :goto_639
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_69f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_639

    :cond_69f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_6cf
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_7bb

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6cf

    :cond_735
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7bb

    const/4 v1, 0x0

    :goto_73f
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_773

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_73f

    :cond_773
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_787
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_7bb

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$startt:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_787

    :cond_7bb
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3db

    :cond_7c0
    return-void
.end method
