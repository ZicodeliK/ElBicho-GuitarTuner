.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DIZ)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$icr:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iput-boolean p8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3af

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$n0:I

    :goto_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76b

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$icr:I

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    :goto_1c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_59
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_230

    const/4 v1, 0x0

    :goto_63
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3aa

    const/4 v2, 0x0

    :goto_6c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_11c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v10, v10, v4

    aput-wide v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v11, v4, 0x1

    aget-wide v10, v10, v11

    aput-wide v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x2

    aget-wide v9, v9, v10

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x3

    aget-wide v9, v9, v10

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x4

    aget-wide v9, v6, v9

    aput-wide v9, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v7, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x5

    aget-wide v9, v7, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v4, 0x6

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v8, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v4, v4, 0x7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6c

    :cond_11c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v2, 0x0

    :goto_17c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_22c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    aget-wide v10, v10, v5

    aput-wide v10, v9, v4

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    aget-wide v11, v11, v5

    aput-wide v11, v9, v10

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    aget-wide v10, v10, v6

    aput-wide v10, v5, v9

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, v10, v6

    aput-wide v10, v5, v9

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x4

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    aget-wide v9, v9, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, v9, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v9, v7, v8

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v4, v4, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17c

    :cond_22c
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_63

    :cond_230
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_326

    const/4 v1, 0x0

    :goto_23a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_29a

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v7, v7, v2

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v8, v2, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v2, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x3

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_23a

    :cond_29a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_2c6
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3aa

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v6, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v6, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v6, v5

    aput-wide v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c6

    :cond_326
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3aa

    const/4 v1, 0x0

    :goto_330
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_364

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v6, v6, v2

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_330

    :cond_364
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_376
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_3aa

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    aget-wide v6, v6, v4

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v4

    aput-wide v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_376

    :cond_3aa
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_7

    :cond_3af
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$n0:I

    :goto_3b1
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76b

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$icr:I

    if-nez v1, :cond_3e6

    const/4 v1, 0x0

    :goto_3c6
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_407

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c6

    :cond_3e6
    const/4 v1, 0x0

    :goto_3e7
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_407

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e7

    :cond_407
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_5e6

    const/4 v1, 0x0

    :goto_411
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_766

    const/4 v2, 0x0

    :goto_41a
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_4ca

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v10, v10, v4

    aput-wide v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v11, v4, 0x1

    aget-wide v10, v10, v11

    aput-wide v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x2

    aget-wide v9, v9, v10

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x3

    aget-wide v9, v9, v10

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x4

    aget-wide v9, v6, v9

    aput-wide v9, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v7, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x5

    aget-wide v9, v7, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v4, 0x6

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v6, v8, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v4, v4, 0x7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_41a

    :cond_4ca
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v2, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v2, 0x0

    :goto_532
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_5e2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    aget-wide v10, v10, v5

    aput-wide v10, v9, v4

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v10, v4, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    aget-wide v11, v11, v5

    aput-wide v11, v9, v10

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    aget-wide v10, v10, v6

    aput-wide v10, v5, v9

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v9, v4, 0x3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, v10, v6

    aput-wide v10, v5, v9

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x4

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    aget-wide v9, v9, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, v9, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v4, 0x6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v9, v7, v8

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v4, v4, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_532

    :cond_5e2
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_411

    :cond_5e6
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6e0

    const/4 v1, 0x0

    :goto_5f0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_650

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v7, v7, v2

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v8, v2, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v2, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x3

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f0

    :cond_650
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v1, v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v1, v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_680
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_766

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v6, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v6, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v6, v5

    aput-wide v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_680

    :cond_6e0
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_766

    const/4 v1, 0x0

    :goto_6ea
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_71e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    aget-wide v6, v6, v2

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6ea

    :cond_71e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$scale:Z

    invoke-virtual {v1, v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_732
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_766

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$startt:I

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    aget-wide v6, v6, v4

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$a:[D

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v6, v4

    aput-wide v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_732

    :cond_766
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3b1

    :cond_76b
    return-void
.end method
