.class Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->forward([[[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;II[[[F)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$lastSlice:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v0

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$firstSlice:I

    :goto_b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$lastSlice:I

    if-ge v0, v1, :cond_53

    move v1, v2

    :goto_10
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_50

    move v3, v2

    :goto_19
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_2e

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    aget v5, v5, v1

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    move-result-object v3

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([F)V

    move v3, v2

    :goto_38
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_4d

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D$5;->val$a:[[[F

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    aget v6, v4, v3

    aput v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_53
    return-void
.end method
