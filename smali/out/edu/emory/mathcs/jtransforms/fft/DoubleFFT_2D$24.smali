.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I

.field final synthetic val$rowStride:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;IIII[D)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$lastRow:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$rowStride:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$n2d2:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$lastRow:I

    if-ge v0, v1, :cond_5f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$rowStride:I

    mul-int v2, v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$rowStride:I

    mul-int/2addr v3, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$n2d2:I

    :goto_18
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v1, v4, :cond_5c

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    aget-wide v7, v7, v5

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v8, v5

    neg-double v8, v8

    aput-wide v8, v6, v7

    add-int v5, v2, v4

    sub-int v4, v3, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    aget-wide v7, v7, v4

    aput-wide v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$24;->val$a:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, v7, v4

    neg-double v7, v7

    aput-wide v7, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5f
    return-void
.end method
