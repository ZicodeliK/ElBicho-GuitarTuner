.class public Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;
.super Ljava/lang/Object;
.source "FrequencySmoothener.java"


# static fields
.field static final frequencyForgetting:D = 0.9

.field static final invalidDataAllowed:I = 0x6

.field private static invalidDataCounter:I

.field private static smoothFrequency:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmoothFrequency(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;)D
    .registers 9
    .param p0, "result"    # Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    .prologue
    const-wide/16 v6, 0x0

    .line 13
    iget-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequencyAvailable:Z

    if-nez v0, :cond_1a

    .line 14
    sget v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->invalidDataCounter:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->invalidDataCounter:I

    .line 24
    :goto_12
    sget v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->invalidDataCounter:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_44

    .line 25
    sget-wide v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    .line 28
    :goto_19
    return-wide v0

    .line 16
    :cond_1a
    sget-wide v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_30

    .line 17
    iget-wide v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequency:D

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    .line 22
    :goto_24
    sget v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->invalidDataCounter:I

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->invalidDataCounter:I

    goto :goto_12

    .line 19
    :cond_30
    const-wide v0, 0x3fb9999999999998L    # 0.09999999999999998

    sget-wide v2, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    mul-double/2addr v0, v2

    .line 20
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    iget-wide v4, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequency:D

    mul-double/2addr v2, v4

    .line 19
    add-double/2addr v0, v2

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    goto :goto_24

    .line 27
    :cond_44
    sput-wide v6, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->smoothFrequency:D

    .line 28
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_19
.end method
