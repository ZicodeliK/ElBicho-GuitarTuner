.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$firstRow:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$lastRow:I

    if-ge v0, v1, :cond_77

    move v1, v2

    :goto_12
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_74

    mul-int/lit8 v5, v1, 0x2

    move v3, v2

    :goto_1d
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_42

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    aget-wide v7, v7, v5

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_42
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v2

    :goto_4c
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_71

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    aget-wide v8, v4, v6

    aput-wide v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;->val$a:[[[D

    aget-object v7, v7, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v4, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_77
    return-void
.end method
