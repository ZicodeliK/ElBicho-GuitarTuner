.class Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->ddxt3da_subth(I[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;III[[[FIZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$nthreads:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    iput p6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_225

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$n0:I

    :goto_a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_450

    move v1, v2

    :goto_13
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_2d

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$300(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2d
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-le v1, v10, :cond_17d

    move v1, v2

    :goto_36
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_220

    move v3, v2

    :goto_3f
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_ad

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget v7, v7, v1

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_ad
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move v3, v2

    :goto_10b
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_179

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v7, v3

    aget v6, v6, v7

    aput v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_10b

    :cond_179
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_36

    :cond_17d
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-ne v1, v10, :cond_220

    move v1, v2

    :goto_186
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_1be

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_186

    :cond_1be
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move v1, v2

    :goto_1e8
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_220

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e8

    :cond_220
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_a

    :cond_225
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$n0:I

    :goto_227
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_450

    move v1, v2

    :goto_230
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_24c

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$300(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_230

    :cond_24c
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-le v1, v10, :cond_3a4

    move v1, v2

    :goto_255
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_44b

    move v3, v2

    :goto_25e
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2cc

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget v7, v7, v1

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_25e

    :cond_2cc
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v3, v2

    :goto_332
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_3a0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v7, v3

    aget v6, v6, v7

    aput v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_332

    :cond_3a0
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_255

    :cond_3a4
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    if-ne v1, v10, :cond_44b

    move v1, v2

    :goto_3ad
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3e5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ad

    :cond_3e5
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v1, v2

    :goto_413
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_44b

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)[F

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget v4, v4, v5

    aput v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_413

    :cond_44b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$14;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_227

    :cond_450
    return-void
.end method
