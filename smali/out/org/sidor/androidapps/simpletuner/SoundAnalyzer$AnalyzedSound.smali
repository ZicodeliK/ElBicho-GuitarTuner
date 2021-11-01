.class public Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
.super Ljava/lang/Object;
.source "SoundAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalyzedSound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;
    }
.end annotation


# instance fields
.field public error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field public frequency:D

.field public frequencyAvailable:Z

.field public loudness:D


# direct methods
.method public constructor <init>(DD)V
    .registers 6
    .param p1, "l"    # D
    .param p3, "f"    # D

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->loudness:D

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequencyAvailable:Z

    .line 74
    iput-wide p3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequency:D

    .line 75
    sget-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 76
    return-void
.end method

.method public constructor <init>(DLorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;)V
    .registers 5
    .param p1, "l"    # D
    .param p3, "e"    # Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->loudness:D

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequencyAvailable:Z

    .line 69
    iput-object p3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 70
    return-void
.end method


# virtual methods
.method public getDebug()V
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v0, v1, :cond_23

    .line 79
    const-string v0, "RealGuitarTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OK("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->frequency:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_22
    return-void

    .line 80
    :cond_23
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v0, v1, :cond_31

    .line 81
    const-string v0, "RealGuitarTuner"

    const-string v1, "Zero Samples (no wavelength established)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 82
    :cond_31
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v0, v1, :cond_3f

    .line 83
    const-string v0, "RealGuitarTuner"

    const-string v1, "Variance on wavelengh too big."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 84
    :cond_3f
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v0, v1, :cond_4d

    .line 85
    const-string v0, "RealGuitarTuner"

    const-string v1, "Sound too quiet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 86
    :cond_4d
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v0, v1, :cond_5b

    .line 87
    const-string v0, "RealGuitarTuner"

    const-string v1, "Frequency bigger than 2700.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 88
    :cond_5b
    const-string v0, "RealGuitarTuner"

    const-string v1, "WTF - unknown AnalyzedSound message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
