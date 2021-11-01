.class Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->inverse([FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;II[FZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$a:[F

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v0

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$firstRow:I

    :goto_b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$lastRow:I

    if-ge v0, v1, :cond_67

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v1

    mul-int v5, v0, v1

    move v1, v2

    :goto_18
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_64

    move v3, v2

    :goto_21
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_3b

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$a:[F

    aget v6, v7, v6

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$700(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$scale:Z

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    move v3, v2

    :goto_47
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_61

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$9;->val$a:[F

    aget v8, v4, v3

    aput v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_67
    return-void
.end method
