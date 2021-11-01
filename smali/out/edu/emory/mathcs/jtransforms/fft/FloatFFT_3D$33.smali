.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FIZ)V
    .registers 9

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$icr:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iput-boolean p8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 16

    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3af

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$n0:I

    :goto_a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$icr:I

    if-nez v1, :cond_3d

    move v1, v2

    :goto_1f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_5c

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3d
    move v1, v2

    :goto_3e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_5c

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_5c
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v13, :cond_232

    move v1, v2

    :goto_65
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3aa

    move v3, v2

    :goto_6e
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_11e

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v11, v11, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x2

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x3

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x4

    aget v7, v7, v10

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x5

    aget v8, v8, v10

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v5, 0x6

    aget v7, v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v9, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    aget v5, v8, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6e

    :cond_11e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v2

    :goto_17e
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_22e

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v6

    aput v11, v10, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    aget v6, v12, v6

    aput v6, v10, v11

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v7

    aput v11, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    aget v7, v11, v7

    aput v7, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_17e

    :cond_22e
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_65

    :cond_232
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v13, :cond_327

    move v1, v2

    :goto_23b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_29b

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v8, v8, v3

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v7, v3

    aput v3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_23b

    :cond_29b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_2c7
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3aa

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v7, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v3, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c7

    :cond_327
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v14, :cond_3aa

    move v1, v2

    :goto_330
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_364

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v7, v7, v3

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v7, v3

    aput v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_330

    :cond_364
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_376
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3aa

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    aget v7, v7, v5

    aput v7, v6, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_376

    :cond_3aa
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_a

    :cond_3af
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$n0:I

    :goto_3b1
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$icr:I

    if-nez v1, :cond_3e6

    move v1, v2

    :goto_3c6
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3e6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c6

    :cond_3e6
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v13, :cond_5c4

    move v1, v2

    :goto_3ef
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_742

    move v3, v2

    :goto_3f8
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_4a8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v11, v11, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x2

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x3

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x4

    aget v7, v7, v10

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x5

    aget v8, v8, v10

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v5, 0x6

    aget v7, v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v9, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    aget v5, v8, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f8

    :cond_4a8
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v2

    :goto_510
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_5c0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v6

    aput v11, v10, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v11, v5, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    aget v6, v12, v6

    aput v6, v10, v11

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v7

    aput v11, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v10, v5, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    aget v7, v11, v7

    aput v7, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v5, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_510

    :cond_5c0
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_3ef

    :cond_5c4
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v13, :cond_6bd

    move v1, v2

    :goto_5cd
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_62d

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v8, v8, v3

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v7, v3

    aput v3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5cd

    :cond_62d
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_65d
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_742

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v7, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v7, v3, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_65d

    :cond_6bd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v14, :cond_742

    move v1, v2

    :goto_6c6
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_6fa

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    aget v7, v7, v3

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v7, v3

    aput v3, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c6

    :cond_6fa
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_70e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_742

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    aget v7, v7, v5

    aput v7, v6, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_70e

    :cond_742
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$icr:I

    if-eqz v1, :cond_767

    move v1, v2

    :goto_747
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_767

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_747

    :cond_767
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3b1

    :cond_76c
    return-void
.end method
