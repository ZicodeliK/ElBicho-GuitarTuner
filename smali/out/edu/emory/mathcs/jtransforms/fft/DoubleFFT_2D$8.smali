.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;II[[DZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$firstColumn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$lastColumn:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$a:[[D

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$firstColumn:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$lastColumn:I

    if-ge v0, v1, :cond_65

    mul-int/lit8 v4, v0, 0x2

    move v1, v2

    :goto_14
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_35

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$a:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v4

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$a:[[D

    aget-object v6, v6, v1

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_35
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$scale:Z

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v1, v2

    :goto_41
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_62

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$a:[[D

    aget-object v6, v6, v1

    aget-wide v7, v3, v5

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$8;->val$a:[[D

    aget-object v6, v6, v1

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v8, v3, v5

    aput-wide v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_65
    return-void
.end method