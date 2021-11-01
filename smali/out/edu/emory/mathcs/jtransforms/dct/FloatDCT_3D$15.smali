.class Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->ddxt3db_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;IIII[FZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22a

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v0

    if-le v0, v3, :cond_168

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$n0:I

    :goto_11
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_44d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_22
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_163

    move v3, v2

    :goto_2b
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_92

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    aget v9, v9, v5

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v8, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_92
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v3, v2

    :goto_f8
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_15f

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v8

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v9, v3

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v9

    aget v9, v9, v6

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v8, v5, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    add-int/2addr v10, v6

    aget v9, v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    aget v6, v8, v6

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    :cond_15f
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_22

    :cond_163
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_11

    :cond_168
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_44d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$n0:I

    :goto_172
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_44d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_183
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_1bd

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_183

    :cond_1bd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v1, v2

    :goto_1eb
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_225

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1eb

    :cond_225
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_172

    :cond_22a
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v0

    if-le v0, v3, :cond_38b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$n0:I

    :goto_234
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_44d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_245
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_386

    move v3, v2

    :goto_24e
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_2b5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    aget v9, v9, v5

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v8, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_24e

    :cond_2b5
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v3, v2

    :goto_31b
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_382

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v8

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v9, v3

    aget v8, v8, v9

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v9

    aget v9, v9, v6

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v8, v5, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v10

    add-int/2addr v10, v6

    aget v9, v9, v10

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    aget v6, v8, v6

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_31b

    :cond_382
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_245

    :cond_386
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_234

    :cond_38b
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_44d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$n0:I

    :goto_395
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_44d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_3a6
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_3e0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a6

    :cond_3e0
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v1, v2

    :goto_40e
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_448

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_40e

    :cond_448
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_3D$15;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_395

    :cond_44d
    return-void
.end method
