.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull([[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I

.field final synthetic val$temp:[[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;III[[D[[D)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$lastRow:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$n2d2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$a:[[D

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$temp:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$lastRow:I

    if-ge v0, v1, :cond_31

    mul-int/lit8 v2, v0, 0x2

    const/4 v1, 0x0

    :goto_9
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$n2d2:I

    if-ge v1, v3, :cond_2e

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$a:[[D

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$temp:[[D

    aget-object v5, v5, v1

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$a:[[D

    aget-object v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$11;->val$temp:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v2, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_31
    return-void
.end method
