.class Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->scale(D[DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$m:D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DD)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$a:[D

    iput-wide p5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$m:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$lastIdx:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$a:[D

    aget-wide v2, v1, v0

    iget-wide v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;->val$m:D

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method
