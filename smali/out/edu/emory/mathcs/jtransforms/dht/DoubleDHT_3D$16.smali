.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->ddxt3db_subth(I[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;IIII[[[DZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$nthreads:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_219

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    if-le v0, v3, :cond_167

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$n0:I

    :goto_12
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_436

    move v1, v2

    :goto_1b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_162

    move v3, v2

    :goto_24
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_92

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_92
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v3, v2

    :goto_f0
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_15e

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    :cond_15e
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1b

    :cond_162
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_12

    :cond_167
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_436

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$n0:I

    :goto_171
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_436

    move v1, v2

    :goto_17a
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_1b2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget-wide v5, v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    :cond_1b2
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v2

    :goto_1dc
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_214

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1dc

    :cond_214
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_171

    :cond_219
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    if-le v0, v3, :cond_380

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$n0:I

    :goto_223
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_436

    move v1, v2

    :goto_22c
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_37b

    move v3, v2

    :goto_235
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2a3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v6, v6, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_235

    :cond_2a3
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v3, v2

    :goto_309
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_377

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_309

    :cond_377
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_22c

    :cond_37b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_223

    :cond_380
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v0

    if-ne v0, v3, :cond_436

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$n0:I

    :goto_38a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_436

    move v1, v2

    :goto_393
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3cb

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    aget-wide v5, v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_393

    :cond_3cb
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v1, v2

    :goto_3f9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_431

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$a:[[[D

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f9

    :cond_431
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_38a

    :cond_436
    return-void
.end method
