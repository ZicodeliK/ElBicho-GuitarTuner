.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[FIZ)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$icr:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iput-boolean p8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 16

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3cf

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$n0:I

    :goto_c
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_7a6

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$icr:I

    if-nez v1, :cond_33

    move v1, v2

    :goto_19
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_4e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_33
    move v1, v2

    :goto_34
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_4e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v14, :cond_252

    move v1, v2

    :goto_57
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3ca

    move v3, v2

    :goto_60
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_127

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v9, v9, v0

    aget-object v9, v9, v3

    aget v9, v9, v1

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v9, v9, v0

    aget-object v9, v9, v3

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v8, v1, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v8, v1, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_60

    :cond_127
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v2

    :goto_187
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_24e

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v4

    aput v9, v8, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v5

    aput v9, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v8, v1, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_187

    :cond_24e
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_57

    :cond_252
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v14, :cond_34b

    move v1, v2

    :goto_25b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_2bd

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    aget v6, v6, v11

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v12

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v13

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25b

    :cond_2bd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_2e9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3ca

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v11

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v4

    aput v5, v3, v12

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e9

    :cond_34b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v12, :cond_3ca

    move v1, v2

    :goto_354
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_386

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v11

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_354

    :cond_386
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_398
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3ca

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_398

    :cond_3ca
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_c

    :cond_3cf
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$n0:I

    :goto_3d1
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_7a6

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$icr:I

    if-nez v1, :cond_3fa

    move v1, v2

    :goto_3de
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_417

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3de

    :cond_3fa
    move v1, v2

    :goto_3fb
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_417

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v2, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fb

    :cond_417
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v14, :cond_623

    move v1, v2

    :goto_420
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_7a1

    move v3, v2

    :goto_429
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_4f0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v9, v9, v0

    aget-object v9, v9, v3

    aget v9, v9, v1

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v9, v9, v0

    aget-object v9, v9, v3

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v8, v1, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v8, v1, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_429

    :cond_4f0
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v2

    :goto_558
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_61f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v4

    aput v9, v8, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v8, v8, v0

    aget-object v8, v8, v3

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v5

    aput v9, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v8, v1, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v3

    add-int/lit8 v5, v1, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_558

    :cond_61f
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_420

    :cond_623
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v14, :cond_720

    move v1, v2

    :goto_62c
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_68e

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    aget v6, v6, v11

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v12

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v13

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_62c

    :cond_68e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_6be
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_7a1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v11

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v4

    aput v5, v3, v12

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_6be

    :cond_720
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v12, :cond_7a1

    move v1, v2

    :goto_729
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_75b

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v11

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_729

    :cond_75b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_76f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_7a1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_76f

    :cond_7a1
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3d1

    :cond_7a6
    return-void
.end method
