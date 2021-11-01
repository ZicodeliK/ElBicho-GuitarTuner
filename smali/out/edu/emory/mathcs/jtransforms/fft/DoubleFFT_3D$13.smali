.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;
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

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$lastSlice:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$a:[[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$lastSlice:I

    if-ge v0, v1, :cond_24

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method
