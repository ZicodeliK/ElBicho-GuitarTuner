.class Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftrec4_th(I[DII[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$mf:I

.field final synthetic val$n:I

.field final synthetic val$nw:I

.field final synthetic val$w:[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[D[DI)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$mf:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$n:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$a:[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$w:[D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$nw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$mf:I

    add-int v8, v0, v1

    const/4 v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$n:I

    move v7, v0

    :goto_a
    const/16 v0, 0x200

    if-le v1, v0, :cond_22

    shr-int/lit8 v1, v1, 0x2

    shl-int/lit8 v6, v7, 0x2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$a:[D

    sub-int v3, v8, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$w:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$nw:I

    sub-int/2addr v5, v1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$400(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;I[DI[DI)V

    move v7, v6

    goto :goto_a

    :cond_22
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$a:[D

    sub-int v4, v8, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$w:[D

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$200(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DII[D)V

    shr-int/lit8 v3, v7, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:I

    sub-int v11, v0, v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$mf:I

    sub-int v2, v0, v1

    :goto_3a
    if-lez v2, :cond_5c

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$a:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:I

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$nw:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$w:[D

    invoke-static/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$300(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[DII[D)I

    move-result v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$a:[D

    add-int v8, v11, v2

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$nw:I

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;->val$w:[D

    move v5, v1

    invoke-static/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$200(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DII[D)V

    sub-int/2addr v2, v1

    goto :goto_3a

    :cond_5c
    return-void
.end method
