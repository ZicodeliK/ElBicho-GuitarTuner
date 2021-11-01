.class public Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;
.super Ljava/util/Observable;
.source "SoundAnalyzer.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;,
        Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;
    }
.end annotation


# static fields
.field private static final AUDIO_SAMPLING_RATE:I = 0xac44

.field private static final MPM:D = 0.7

.field private static final MaxPossibleFrequency:D = 2700.0

.field private static final PercentOfWavelenghSamplesToBeIgnored:D = 0.2

.field public static final TAG:Ljava/lang/String; = "RealGuitarTuner"

.field private static audioDataSize:I = 0x0

.field private static final loudnessThreshold:D = 30.0

.field private static maxNotifyRate:D = 0.0

.field private static final maxStDevOfMeanFrequency:D = 2.0

.field private static minNotifyRate:D

.field private static notifyRateinS:D


# instance fields
.field private analyzingData:Ljava/util/concurrent/locks/Lock;

.field private analyzisResult:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

.field private final audioData:Lorg/sidor/androidapps/simpletuner/CircularBuffer;

.field private audioDataAnalyzis:[D

.field private audioDataTemp:[S

.field audioReaderThread:Ljava/lang/Thread;

.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferSize:I

.field private currentFftMethodSize:I

.field dumpAudioData:Z

.field private elementsRead:I

.field fft_method:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private shouldAudioReaderThreadDie:Z

.field private wavelength:[D

.field private wavelengths:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 21
    const/16 v0, 0x1c20

    sput v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    .line 24
    const-wide v0, 0x3fc3333333333333L    # 0.15

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyRateinS:D

    .line 25
    const-wide v0, 0x3fd999999999999aL    # 0.4

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->minNotifyRate:D

    .line 27
    sget v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    int-to-double v0, v0

    const-wide v2, 0x40e5888000000000L    # 44100.0

    div-double/2addr v0, v2

    .line 26
    sput-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->maxNotifyRate:D

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 48
    iput v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    .line 200
    iput-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioData:Z

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->currentFftMethodSize:I

    .line 106
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 105
    iput v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->bufferSize:I

    .line 111
    new-instance v0, Landroid/media/AudioRecord;

    .line 115
    iget v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 111
    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    .line 120
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 122
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v1, :cond_38

    .line 123
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not initialize microphone."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_38
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->onNotifyRateChanged()V

    .line 126
    sget v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataTemp:[S

    .line 127
    sget v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x64

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    .line 128
    sget v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    .line 129
    new-instance v0, Lorg/sidor/androidapps/simpletuner/CircularBuffer;

    sget v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    invoke-direct {v0, v1}, Lorg/sidor/androidapps/simpletuner/CircularBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioData:Lorg/sidor/androidapps/simpletuner/CircularBuffer;

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->analyzingData:Ljava/util/concurrent/locks/Lock;

    .line 131
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    sget v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    invoke-direct {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->fft_method:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 132
    return-void
.end method

.method static synthetic access$0(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->shouldAudioReaderThreadDie:Z

    return v0
.end method

.method static synthetic access$1(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Landroid/media/AudioRecord;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$10()D
    .registers 2

    .prologue
    .line 26
    sget-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->maxNotifyRate:D

    return-wide v0
.end method

.method static synthetic access$11(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    .registers 2

    .prologue
    .line 358
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getFrequency()Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->analyzisResult:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    return-void
.end method

.method static synthetic access$13(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioDataExecute()V

    return-void
.end method

.method static synthetic access$14(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->setChanged()V

    return-void
.end method

.method static synthetic access$2(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)[S
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataTemp:[S

    return-object v0
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    return v0
.end method

.method static synthetic access$4(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Lorg/sidor/androidapps/simpletuner/CircularBuffer;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioData:Lorg/sidor/androidapps/simpletuner/CircularBuffer;

    return-object v0
.end method

.method static synthetic access$5(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->analyzingData:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$6()D
    .registers 2

    .prologue
    .line 24
    sget-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyRateinS:D

    return-wide v0
.end method

.method static synthetic access$7()D
    .registers 2

    .prologue
    .line 25
    sget-wide v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->minNotifyRate:D

    return-wide v0
.end method

.method static synthetic access$8(D)V
    .registers 2

    .prologue
    .line 24
    sput-wide p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyRateinS:D

    return-void
.end method

.method static synthetic access$9(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->onNotifyRateChanged()V

    return-void
.end method

.method private computeAutocorrelation()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 270
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->currentFftMethodSize:I

    if-eq v1, v2, :cond_1c

    .line 271
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->fft_method:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    .line 272
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->currentFftMethodSize:I

    .line 276
    :cond_1c
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_20
    if-gez v0, :cond_58

    .line 280
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    mul-int/lit8 v0, v1, 0x2

    :goto_26
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    array-length v1, v1

    if-lt v0, v1, :cond_74

    .line 284
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->fft_method:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    invoke-virtual {v1, v2, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    .line 287
    const/4 v0, 0x0

    :goto_33
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v0, v1, :cond_7b

    .line 291
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    mul-int/lit8 v0, v1, 0x2

    :goto_3b
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    array-length v1, v1

    if-lt v0, v1, :cond_a3

    .line 295
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aput-wide v7, v1, v9

    .line 298
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->fft_method:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    .line 301
    const/4 v0, 0x0

    :goto_4c
    iget v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v0, v1, :cond_aa

    .line 303
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    :goto_52
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    array-length v1, v1

    if-lt v0, v1, :cond_b7

    .line 305
    return-void

    .line 277
    :cond_58
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v3, v3, v0

    iget v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    invoke-direct {p0, v0, v5}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->hanning(II)D

    move-result-wide v5

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 278
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aput-wide v7, v1, v2

    .line 276
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 281
    :cond_74
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aput-wide v7, v1, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 288
    :cond_7b
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v4, v0, 0x2

    aget-wide v3, v3, v4

    invoke-direct {p0, v3, v4}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->sq(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    invoke-direct {p0, v5, v6}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->sq(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 289
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aput-wide v7, v1, v2

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 292
    :cond_a3
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aput-wide v7, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 302
    :cond_aa
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    mul-int/lit8 v3, v0, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 304
    :cond_b7
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aput-wide v7, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_52
.end method

.method private dumpAudioDataExecute()V
    .registers 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->setChanged()V

    .line 217
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;

    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    iget v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    invoke-direct {v0, p0, v1, v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;-><init>(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;[DI)V

    invoke-virtual {p0, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyObservers(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method private getFrequency()Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    .registers 20

    .prologue
    .line 359
    .line 360
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioData:Lorg/sidor/androidapps/simpletuner/CircularBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataSize:I

    invoke-virtual/range {v15 .. v18}, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->getElements([DII)I

    move-result v15

    .line 359
    move-object/from16 v0, p0

    iput v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    .line 361
    const-wide/16 v6, 0x0

    .line 362
    .local v6, "loudness":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v4, v15, :cond_35

    .line 364
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    int-to-double v15, v15

    div-double/2addr v6, v15

    .line 366
    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    cmpg-double v15, v6, v15

    if-gez v15, :cond_43

    .line 367
    new-instance v15, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    sget-object v16, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v7, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;-><init>(DLorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;)V

    .line 407
    :goto_34
    return-object v15

    .line 363
    :cond_35
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v15, v15, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    add-double/2addr v6, v15

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 369
    :cond_43
    invoke-direct/range {p0 .. p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->computeAutocorrelation()V

    .line 373
    const-wide/16 v8, 0x0

    .line 374
    .local v8, "maximum":D
    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v4, v15, :cond_71

    .line 377
    const/4 v5, -0x1

    .line 378
    .local v5, "lastStart":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    .line 379
    const/4 v12, 0x1

    .line 380
    .local v12, "passedZero":Z
    const/4 v4, 0x0

    :goto_57
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v4, v15, :cond_7f

    .line 390
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_e9

    .line 391
    new-instance v15, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    sget-object v16, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v7, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;-><init>(DLorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;)V

    goto :goto_34

    .line 375
    .end local v5    # "lastStart":I
    .end local v12    # "passedZero":Z
    :cond_71
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v15, v15, v4

    move-wide v0, v15

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 381
    .restart local v5    # "lastStart":I
    .restart local v12    # "passedZero":Z
    :cond_7f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v15, v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x1

    aget-wide v17, v17, v18

    mul-double v15, v15, v17

    const-wide/16 v17, 0x0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_98

    const/4 v12, 0x1

    .line 382
    :cond_98
    if-eqz v12, :cond_e5

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v15, v15, v4

    const-wide v17, 0x3fe6666666666666L    # 0.7

    mul-double v17, v17, v8

    cmpl-double v15, v15, v17

    if-lez v15, :cond_e5

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v15, v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x1

    aget-wide v17, v17, v18

    cmpl-double v15, v15, v17

    if-lez v15, :cond_e5

    .line 384
    const/4 v15, -0x1

    if-eq v5, v15, :cond_dd

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    sub-int v17, v4, v5

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    aput-wide v17, v15, v16

    .line 386
    :cond_dd
    move v5, v4

    const/4 v12, 0x0

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v8, v15, v4

    .line 380
    :cond_e5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 393
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->removeFalseSamples()V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getMeanWavelength()D

    move-result-wide v10

    .local v10, "mean":D
    invoke-virtual/range {p0 .. p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getStDevOnWavelength()D

    move-result-wide v13

    .line 397
    .local v13, "stdv":D
    const-wide v15, 0x40e5888000000000L    # 44100.0

    div-double v2, v15, v10

    .line 402
    .local v2, "calculatedFrequency":D
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    cmpl-double v15, v13, v15

    if-ltz v15, :cond_10c

    .line 403
    new-instance v15, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    sget-object v16, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v7, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;-><init>(DLorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;)V

    goto/16 :goto_34

    .line 404
    :cond_10c
    const-wide v15, 0x40a5180000000000L    # 2700.0

    cmpl-double v15, v2, v15

    if-lez v15, :cond_120

    .line 405
    new-instance v15, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    sget-object v16, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v7, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;-><init>(DLorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;)V

    goto/16 :goto_34

    .line 407
    :cond_120
    new-instance v15, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    invoke-direct {v15, v6, v7, v2, v3}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;-><init>(DD)V

    goto/16 :goto_34
.end method

.method private hanning(II)D
    .registers 11
    .param p1, "n"    # I
    .param p2, "N"    # I

    .prologue
    .line 258
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-int/lit8 v6, p2, -0x1

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private onNotifyRateChanged()V
    .registers 6

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-wide v2, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->howOftenLogNotifyRate:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_20

    .line 95
    const-string v0, "RealGuitarTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notify rate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyRateinS:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_20
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    .line 97
    sget-wide v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyRateinS:D

    const-wide v3, 0x40e5888000000000L    # 44100.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    if-eqz v0, :cond_38

    .line 99
    const-string v0, "RealGuitarTuner"

    const-string v1, "Invalid notify rate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_38
    return-void
.end method

.method private sq(D)D
    .registers 5
    .param p1, "a"    # D

    .prologue
    .line 252
    mul-double v0, p1, p1

    return-wide v0
.end method

.method private startAudioReaderThread()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 141
    iput-boolean v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->shouldAudioReaderThreadDie:Z

    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;

    invoke-direct {v1, p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;-><init>(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 160
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method private stopAudioReaderThread()V
    .registers 5

    .prologue
    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->shouldAudioReaderThreadDie:Z

    .line 166
    :try_start_3
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 170
    :goto_8
    return-void

    .line 167
    :catch_9
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RealGuitarTuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not join audioReaderThread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method


# virtual methods
.method public dumpAudioDataRequest()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioData:Z

    .line 204
    return-void
.end method

.method public ensureStarted()V
    .registers 3

    .prologue
    .line 173
    const-string v0, "RealGuitarTuner"

    const-string v1, "Ensuring recording is on..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    .line 175
    const-string v0, "RealGuitarTuner"

    const-string v1, "I was worth ensuring recording is on."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 178
    :cond_1c
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    if-nez v0, :cond_24

    .line 179
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->startAudioReaderThread()V

    .line 184
    :cond_23
    :goto_23
    return-void

    .line 180
    :cond_24
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    .line 181
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->startAudioReaderThread()V

    goto :goto_23
.end method

.method getMeanWavelength()D
    .registers 6

    .prologue
    .line 325
    const-wide/16 v1, 0x0

    .line 326
    .local v1, "mean":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    if-lt v0, v3, :cond_c

    .line 328
    iget v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 329
    return-wide v1

    .line 327
    :cond_c
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    aget-wide v3, v3, v0

    add-double/2addr v1, v3

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method getStDevOnWavelength()D
    .registers 10

    .prologue
    .line 333
    const-wide/16 v3, 0x0

    .local v3, "variance":D
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getMeanWavelength()D

    move-result-wide v1

    .line 334
    .local v1, "mean":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_7
    iget v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    if-lt v0, v5, :cond_16

    .line 336
    iget v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 337
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    return-wide v5

    .line 335
    :cond_16
    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    aget-wide v5, v5, v0

    sub-double/2addr v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .registers 4
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 193
    const-string v0, "RealGuitarTuner"

    const-string v1, "This should never heppen - check AudioRecorded set up (notifications)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .registers 4
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->analyzisResult:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    invoke-virtual {p0, v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->notifyObservers(Ljava/lang/Object;)V

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;

    invoke-direct {v1, p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;-><init>(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    return-void
.end method

.method removeFalseSamples()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 342
    const-wide v6, 0x3fc999999999999aL    # 0.2

    iget v8, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 343
    .local v4, "samplesToBeIgnored":I
    iget v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    if-gt v6, v10, :cond_11

    .line 356
    :cond_f
    :goto_f
    return-void

    .end local v4    # "samplesToBeIgnored":I
    .local v0, "best":I
    .local v1, "i":I
    .local v2, "mean":D
    .local v5, "samplesToBeIgnored":I
    :cond_10
    move v4, v5

    .line 345
    .end local v0    # "best":I
    .end local v1    # "i":I
    .end local v2    # "mean":D
    .end local v5    # "samplesToBeIgnored":I
    .restart local v4    # "samplesToBeIgnored":I
    :cond_11
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getMeanWavelength()D

    move-result-wide v2

    .line 347
    .restart local v2    # "mean":D
    const/4 v0, -0x1

    .line 348
    .restart local v0    # "best":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17
    iget v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    if-lt v1, v6, :cond_41

    .line 352
    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    iget-object v7, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    iget v8, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    add-int/lit8 v8, v8, -0x1

    aget-wide v7, v7, v8

    aput-wide v7, v6, v0

    .line 353
    iget v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    .line 354
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->getStDevOnWavelength()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_f

    .line 355
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "samplesToBeIgnored":I
    .restart local v5    # "samplesToBeIgnored":I
    if-lez v4, :cond_3f

    iget v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelengths:I

    if-gt v6, v10, :cond_10

    :cond_3f
    move v4, v5

    .end local v5    # "samplesToBeIgnored":I
    .restart local v4    # "samplesToBeIgnored":I
    goto :goto_f

    .line 349
    :cond_41
    const/4 v6, -0x1

    if-eq v0, v6, :cond_5a

    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    aget-wide v6, v6, v1

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 350
    iget-object v8, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->wavelength:[D

    aget-wide v8, v8, v0

    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5b

    :cond_5a
    move v0, v1

    .line 348
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method shoothOutAudioData()V
    .registers 9

    .prologue
    .line 309
    const-wide/16 v0, 0x0

    .line 310
    .local v0, "averageDistance":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v2, v4, :cond_18

    .line 312
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "lastGoodPosition":I
    const/4 v2, 0x1

    :goto_f
    iget v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    if-lt v2, v4, :cond_2b

    .line 321
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->elementsRead:I

    .line 322
    return-void

    .line 311
    .end local v3    # "lastGoodPosition":I
    :cond_18
    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    add-int/lit8 v7, v2, -0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 316
    .restart local v3    # "lastGoodPosition":I
    :cond_2b
    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 317
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_49

    .line 318
    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioDataAnalyzis:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    .line 315
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method public start()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 136
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->startAudioReaderThread()V

    .line 137
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->stopAudioReaderThread()V

    .line 188
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 189
    return-void
.end method
