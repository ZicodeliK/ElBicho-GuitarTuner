.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 14

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39b

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-le v0, v3, :cond_1f5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_12
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_23
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_1f0

    move v3, v2

    :goto_2c
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_dc

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v11, v11, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x2

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x3

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x4

    aget v7, v7, v10

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x5

    aget v8, v8, v10

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v5, 0x6

    aget v7, v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v9, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    aget v5, v8, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2c

    :cond_dc
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v2

    :goto_13c
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_1ec

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v6

    aput v11, v10, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    aget v6, v12, v6

    aput v6, v10, v11

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v7

    aput v11, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    aget v7, v11, v7

    aput v7, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13c

    :cond_1ec
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_23

    :cond_1f0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_12

    :cond_1f5
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_301

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_1ff
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_210
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_270

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v8, v8, v4

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x3

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_210

    :cond_270
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    invoke-virtual {v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_29c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_2fc

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v7, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    aput v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_29c

    :cond_2fc
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_1ff

    :cond_301
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v4, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_30b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_31c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_350

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v7, v7, v4

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_31c

    :cond_350
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    invoke-virtual {v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v1, v2

    :goto_362
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_396

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    aget v7, v7, v5

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_362

    :cond_396
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_30b

    :cond_39b
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-le v0, v3, :cond_590

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_3a5
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_3b6
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_58b

    move v3, v2

    :goto_3bf
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_46f

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v11, v11, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x2

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x3

    aget v10, v10, v11

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x4

    aget v7, v7, v10

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v8, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x5

    aget v8, v8, v10

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v5, 0x6

    aget v7, v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v7, v9, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    aget v5, v8, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3bf

    :cond_46f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v2

    :goto_4d7
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_587

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v6

    aput v11, v10, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v11, v5, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    aget v6, v12, v6

    aput v6, v10, v11

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    aget v11, v11, v7

    aput v11, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v10, v5, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    aget v7, v11, v7

    aput v7, v6, v10

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    aget v10, v10, v8

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v5, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v5, v5, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4d7

    :cond_587
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_3b6

    :cond_58b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_3a5

    :cond_590
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_6a0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_59a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_5ab
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_60b

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v8, v8, v4

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x3

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ab

    :cond_60b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_63b
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_69b

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v5

    aput v8, v7, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v7, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v7, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v8

    aget v8, v8, v6

    aput v8, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    aget v6, v7, v6

    aput v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_63b

    :cond_69b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_59a

    :cond_6a0
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    if-ne v0, v4, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$n0:I

    :goto_6aa
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_6bb
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_6ef

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    aget v7, v7, v4

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6bb

    :cond_6ef
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v1, v2

    :goto_703
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_737

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$startt:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    aget v7, v7, v5

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_703

    :cond_737
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_6aa

    :cond_73c
    return-void
.end method
