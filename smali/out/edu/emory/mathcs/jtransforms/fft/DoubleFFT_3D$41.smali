.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;
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

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$lastSlice:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$n2d2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v8, 0x0

    const/4 v2, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$firstSlice:I

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$lastSlice:I

    if-ge v0, v1, :cond_4a

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    rem-int v3, v1, v3

    move v1, v2

    :goto_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$n2d2:I

    if-ge v1, v4, :cond_47

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    aget-wide v6, v6, v8

    aput-wide v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v4, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget-wide v5, v5, v2

    neg-double v5, v5

    aput-wide v5, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4a
    return-void
.end method
