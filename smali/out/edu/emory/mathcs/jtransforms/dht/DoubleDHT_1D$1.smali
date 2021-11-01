.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

.field final synthetic val$a:[D

.field final synthetic val$b:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;II[DI[D)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$a:[D

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$b:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$lastIdx:I

    if-ge v0, v1, :cond_34

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$offa:I

    add-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$b:[D

    aget-wide v5, v5, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$b:[D

    aget-wide v7, v7, v2

    sub-double/2addr v5, v7

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$offa:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$b:[D

    aget-wide v5, v5, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;->val$b:[D

    aget-wide v1, v1, v2

    add-double/2addr v1, v5

    aput-wide v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_34
    return-void
.end method
