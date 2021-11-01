.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[FZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 12

    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-le v0, v3, :cond_21d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_14
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_1d
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_218

    move v3, v2

    :goto_26
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_ed

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v9, v9, v3

    aget-object v9, v9, v0

    aget v9, v9, v1

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v9, v9, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v1, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v1, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    :cond_ed
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v2

    :goto_14d
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_214

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v4

    aput v9, v8, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v5

    aput v9, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v1, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14d

    :cond_214
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_1d

    :cond_218
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_14

    :cond_21d
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_325

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_227
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_230
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_292

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v8

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_230

    :cond_292
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_2be
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_320

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v4

    aput v5, v3, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2be

    :cond_320
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_227

    :cond_325
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v8, :cond_76a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_32f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_338
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_36a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v7

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_338

    :cond_36a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_37c
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3ae

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_37c

    :cond_3ae
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_32f

    :cond_3b3
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-le v0, v3, :cond_5ce

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_3bd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_3c6
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_5c9

    move v3, v2

    :goto_3cf
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_496

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v9, v9, v3

    aget-object v9, v9, v0

    aget v9, v9, v1

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v9, v9, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v1, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v1, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3cf

    :cond_496
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v2

    :goto_4fe
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_5c5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v4

    aput v9, v8, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v8, v8, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    aget v9, v9, v5

    aput v9, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v1, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4fe

    :cond_5c5
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_3c6

    :cond_5c9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3bd

    :cond_5ce
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_6da

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_5d8
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_5e1
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_643

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v6, v6, v1

    aget-object v6, v6, v0

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v8

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e1

    :cond_643
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_673
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_6d5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    aget v6, v6, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v4

    aput v5, v3, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_673

    :cond_6d5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_5d8

    :cond_6da
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v8, :cond_76a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$n0:I

    :goto_6e4
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_76a

    move v1, v2

    :goto_6ed
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_71f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget v5, v5, v7

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6ed

    :cond_71f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_733
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_765

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    aget v5, v5, v3

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$a:[[[F

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_733

    :cond_765
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_6e4

    :cond_76a
    return-void
.end method
