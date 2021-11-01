.class public final enum Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;
.super Ljava/lang/Enum;
.source "SoundAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field public static final enum BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field private static final synthetic ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field public static final enum NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field public static final enum TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

.field public static final enum ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    const-string v1, "NO_PROBLEMS"

    invoke-direct {v0, v1, v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 57
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    const-string v1, "TOO_QUIET"

    invoke-direct {v0, v1, v3}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 58
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    const-string v1, "ZERO_SAMPLES"

    invoke-direct {v0, v1, v4}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 59
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    const-string v1, "BIG_VARIANCE"

    invoke-direct {v0, v1, v5}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 60
    new-instance v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    const-string v1, "BIG_FREQUENCY"

    invoke-direct {v0, v1, v6}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    return-object v0
.end method

.method public static values()[Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    array-length v1, v0

    new-array v2, v1, [Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
