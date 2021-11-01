.class public Lorg/sidor/androidapps/simpletuner/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# instance fields
.field private array:[S

.field private availableElements:I

.field private head:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "s"    # I

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    .line 11
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->array:[S

    .line 12
    iput v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    .line 13
    iput v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->availableElements:I

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized getElements([DII)I
    .registers 10
    .param p1, "result"    # [D
    .param p2, "offset"    # I
    .param p3, "maxElements"    # I

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->availableElements:I

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    .local v3, "toRead":I
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    add-int/lit8 v0, v4, -0x1

    .line 29
    .local v0, "current":I
    add-int v4, p2, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_f
    if-ge v2, p2, :cond_13

    .line 33
    monitor-exit p0

    return v3

    .line 30
    :cond_13
    if-gez v0, :cond_28

    :try_start_15
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    add-int/2addr v0, v4

    move v1, v0

    .line 31
    .end local v0    # "current":I
    .local v1, "current":I
    :goto_19
    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->array:[S

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    aget-short v4, v4, v1

    int-to-double v4, v4

    aput-wide v4, p1, v2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_25

    .line 29
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 27
    .end local v0    # "current":I
    .end local v2    # "i":I
    .end local v3    # "toRead":I
    :catchall_25
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "current":I
    .restart local v2    # "i":I
    .restart local v3    # "toRead":I
    :cond_28
    move v1, v0

    .end local v0    # "current":I
    .restart local v1    # "current":I
    goto :goto_19
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    return v0
.end method

.method public declared-synchronized push(S)V
    .registers 5
    .param p1, "x"    # S

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->array:[S

    iget v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    aput-short p1, v0, v1

    .line 22
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    iget v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    if-lt v0, v1, :cond_18

    iget v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    iget v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->head:I

    .line 23
    :cond_18
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->availableElements:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->availableElements:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 24
    monitor-exit p0

    return-void

    .line 21
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
