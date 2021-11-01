.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$n2d2:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$n2d2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x0

    const/4 v2, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$firstSlice:I

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$lastSlice:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    rem-int v3, v1, v3

    move v1, v2

    :goto_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$n2d2:I

    if-ge v1, v4, :cond_83

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget-wide v7, v7, v2

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget-wide v7, v7, v2

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget-wide v7, v7, v9

    neg-double v7, v7

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v4, v7, v4

    aget-wide v7, v4, v9

    aput-wide v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_87
    return-void
.end method
