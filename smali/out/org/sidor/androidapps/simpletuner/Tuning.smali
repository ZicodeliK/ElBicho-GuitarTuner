.class public Lorg/sidor/androidapps/simpletuner/Tuning;
.super Ljava/lang/Object;
.source "Tuning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;,
        Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RealGuitarTuner"

.field private static tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;


# instance fields
.field private humanReadableName:Ljava/lang/String;

.field private strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

.field private tuningId:I

.field private final zeroString:Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    .line 22
    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v2, "Standard"

    .line 23
    new-array v3, v8, [D

    fill-array-data v3, :array_1b8

    .line 24
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "E"

    aput-object v5, v4, v9

    const-string v5, "A"

    aput-object v5, v4, v10

    const-string v5, "D"

    aput-object v5, v4, v11

    const-string v5, "G"

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const-string v6, "B"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "E"

    aput-object v6, v4, v5

    .line 22
    invoke-direct {v1, v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v1, v0, v9

    .line 25
    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v2, "Down a half step"

    .line 26
    new-array v3, v8, [D

    fill-array-data v3, :array_1d4

    .line 27
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "D#"

    aput-object v5, v4, v9

    const-string v5, "G#"

    aput-object v5, v4, v10

    const-string v5, "C#"

    aput-object v5, v4, v11

    const-string v5, "F#"

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const-string v6, "A#"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "D#"

    aput-object v6, v4, v5

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v1, v0, v10

    .line 28
    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v2, "Dropped D"

    .line 29
    new-array v3, v8, [D

    fill-array-data v3, :array_1f0

    .line 30
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "D"

    aput-object v5, v4, v9

    const-string v5, "A"

    aput-object v5, v4, v10

    const-string v5, "D"

    aput-object v5, v4, v11

    const-string v5, "G"

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const-string v6, "B"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "E"

    aput-object v6, v4, v5

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v1, v0, v11

    .line 31
    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v2, "Double Dropped D"

    .line 32
    new-array v3, v8, [D

    fill-array-data v3, :array_20c

    .line 33
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "D"

    aput-object v5, v4, v9

    const-string v5, "A"

    aput-object v5, v4, v10

    const-string v5, "D"

    aput-object v5, v4, v11

    const-string v5, "G"

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const-string v6, "B"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "D"

    aput-object v6, v4, v5

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v1, v0, v12

    const/4 v1, 0x4

    .line 34
    new-instance v2, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v3, "Open A"

    .line 35
    new-array v4, v8, [D

    fill-array-data v4, :array_228

    .line 36
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "E"

    aput-object v6, v5, v9

    const-string v6, "A"

    aput-object v6, v5, v10

    const-string v6, "E"

    aput-object v6, v5, v11

    const-string v6, "A"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "C#"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "E"

    aput-object v7, v5, v6

    .line 34
    invoke-direct {v2, v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 37
    new-instance v2, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v3, "Open C"

    .line 38
    new-array v4, v8, [D

    fill-array-data v4, :array_244

    .line 39
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "C"

    aput-object v6, v5, v9

    const-string v6, "G"

    aput-object v6, v5, v10

    const-string v6, "C"

    aput-object v6, v5, v11

    const-string v6, "G"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "C"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "E"

    aput-object v7, v5, v6

    .line 37
    invoke-direct {v2, v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 40
    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v2, "Open D"

    .line 41
    new-array v3, v8, [D

    fill-array-data v3, :array_260

    .line 42
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "D"

    aput-object v5, v4, v9

    const-string v5, "A"

    aput-object v5, v4, v10

    const-string v5, "D"

    aput-object v5, v4, v11

    const-string v5, "F#"

    aput-object v5, v4, v12

    const/4 v5, 0x4

    const-string v6, "A"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "D"

    aput-object v6, v4, v5

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x7

    .line 43
    new-instance v2, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v3, "Open E"

    .line 44
    new-array v4, v8, [D

    fill-array-data v4, :array_27c

    .line 45
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "E"

    aput-object v6, v5, v9

    const-string v6, "B"

    aput-object v6, v5, v10

    const-string v6, "E"

    aput-object v6, v5, v11

    const-string v6, "G#"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "B"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "E"

    aput-object v7, v5, v6

    .line 43
    invoke-direct {v2, v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 46
    new-instance v2, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v3, "Open Em"

    .line 47
    new-array v4, v8, [D

    fill-array-data v4, :array_298

    .line 48
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "E"

    aput-object v6, v5, v9

    const-string v6, "B"

    aput-object v6, v5, v10

    const-string v6, "E"

    aput-object v6, v5, v11

    const-string v6, "G"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "B"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "E"

    aput-object v7, v5, v6

    .line 46
    invoke-direct {v2, v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 49
    new-instance v2, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    const-string v3, "Open G"

    .line 50
    new-array v4, v8, [D

    fill-array-data v4, :array_2b4

    .line 51
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "G"

    aput-object v6, v5, v9

    const-string v6, "B"

    aput-object v6, v5, v10

    const-string v6, "D"

    aput-object v6, v5, v11

    const-string v6, "G"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "B"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "D"

    aput-object v7, v5, v6

    .line 49
    invoke-direct {v2, v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;-><init>(Ljava/lang/String;[D[Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    .line 7
    return-void

    .line 23
    nop

    :array_1b8
    .array-data 8
        0x40549a3d70a3d70aL    # 82.41
        0x405b800000000000L    # 110.0
        0x40625a8f5c28f5c3L    # 146.83
        0x4068800000000000L    # 196.0
        0x406ede147ae147aeL    # 246.94
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 26
    :array_1d4
    .array-data 8
        0x405371eb851eb852L    # 77.78
        0x4059f51eb851eb85L    # 103.83
        0x406152e147ae147bL    # 138.59
        0x4067200000000000L    # 185.0
        0x406d228f5c28f5c3L    # 233.08
        0x407372147ae147aeL    # 311.13
    .end array-data

    .line 29
    :array_1f0
    .array-data 8
        0x40525ae147ae147bL    # 73.42
        0x405b800000000000L    # 110.0
        0x40625a8f5c28f5c3L    # 146.83
        0x4068800000000000L    # 196.0
        0x406ede147ae147aeL    # 246.94
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 32
    :array_20c
    .array-data 8
        0x40525ae147ae147bL    # 73.42
        0x405b800000000000L    # 110.0
        0x40625a8f5c28f5c3L    # 146.83
        0x4068800000000000L    # 196.0
        0x406ede147ae147aeL    # 246.94
        0x40725a8f5c28f5c3L    # 293.66
    .end array-data

    .line 35
    :array_228
    .array-data 8
        0x40549a3d70a3d70aL    # 82.41
        0x405b800000000000L    # 110.0
        0x406499eb851eb852L    # 164.81
        0x406b800000000000L    # 220.0
        0x407152e147ae147bL    # 277.18
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 38
    :array_244
    .array-data 8
        0x40505a3d70a3d70aL    # 65.41
        0x4058800000000000L    # 98.0
        0x406059eb851eb852L    # 130.81
        0x4068800000000000L    # 196.0
        0x40705a147ae147aeL    # 261.63
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 41
    :array_260
    .array-data 8
        0x40525ae147ae147bL    # 73.42
        0x405b800000000000L    # 110.0
        0x40625a8f5c28f5c3L    # 146.83
        0x4067200000000000L    # 185.0
        0x406b800000000000L    # 220.0
        0x40725a8f5c28f5c3L    # 293.66
    .end array-data

    .line 44
    :array_27c
    .array-data 8
        0x40549a3d70a3d70aL    # 82.41
        0x405ede147ae147aeL    # 123.47
        0x406499eb851eb852L    # 164.81
        0x4069f4cccccccccdL    # 207.65
        0x406ede147ae147aeL    # 246.94
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 47
    :array_298
    .array-data 8
        0x40549a3d70a3d70aL    # 82.41
        0x405ede147ae147aeL    # 123.47
        0x406499eb851eb852L    # 164.81
        0x4068800000000000L    # 196.0
        0x406ede147ae147aeL    # 246.94
        0x40749a147ae147aeL    # 329.63
    .end array-data

    .line 50
    :array_2b4
    .array-data 8
        0x4058800000000000L    # 98.0
        0x405ede147ae147aeL    # 123.47
        0x40625a8f5c28f5c3L    # 146.83
        0x4068800000000000L    # 196.0
        0x406ede147ae147aeL    # 246.94
        0x40725a8f5c28f5c3L    # 293.66
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 12
    .param p1, "tuningNumber"    # I

    .prologue
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    const-string v9, "0"

    move-object v1, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v9}, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;-><init>(Lorg/sidor/androidapps/simpletuner/Tuning;IDDDLjava/lang/String;)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->zeroString:Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    .line 86
    iput v2, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningId:I

    .line 111
    sget-object v0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->freqs:[D

    .line 112
    sget-object v1, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->stringNames:[Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0, v1}, Lorg/sidor/androidapps/simpletuner/Tuning;->initStrings([D[Ljava/lang/String;)V

    .line 113
    sget-object v0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->humanReadableName:Ljava/lang/String;

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->humanReadableName:Ljava/lang/String;

    .line 114
    iput p1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningId:I

    .line 116
    return-void
.end method

.method public static populateSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V
    .registers 8
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "s"    # Landroid/widget/Spinner;

    .prologue
    .line 55
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 56
    const v4, 0x1090008

    .line 55
    invoke-direct {v0, p0, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 57
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget-object v4, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    array-length v4, v4

    if-lt v1, v4, :cond_18

    .line 65
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    return-void

    .line 58
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->humanReadableName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_32
    sget-object v4, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->stringNames:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_41

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 60
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->stringNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 61
    sget-object v4, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningTypes:[Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->stringNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_6e

    const-string v4, ")"

    :goto_63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 61
    :cond_6e
    const-string v4, ","

    goto :goto_63
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->humanReadableName:Ljava/lang/String;

    return-object v0
.end method

.method getString(D)Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;
    .registers 6
    .param p1, "frequency"    # D

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 127
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->zeroString:Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    :goto_8
    return-object v1

    .line 124
    :cond_9
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->minFreq:D

    cmpg-double v1, v1, p1

    if-gtz v1, :cond_22

    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->maxFreq:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_22

    .line 125
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    aget-object v1, v1, v0

    goto :goto_8

    .line 123
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTuningId()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/Tuning;->tuningId:I

    return v0
.end method

.method public initStrings([D[Ljava/lang/String;)V
    .registers 19
    .param p1, "freqs"    # [D
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 92
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v1, v1, [Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    .line 93
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_a
    move-object/from16 v0, p1

    array-length v1, v0

    if-lt v11, v1, :cond_10

    .line 101
    return-void

    .line 94
    :cond_10
    if-nez v11, :cond_57

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    aget-wide v12, p1, v11

    mul-double/2addr v3, v12

    aget-wide v12, p1, v11

    add-int/lit8 v5, v11, 0x1

    aget-wide v14, p1, v5

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v3, v12

    mul-double v6, v1, v3

    .line 96
    .local v6, "ldist":D
    :goto_26
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_63

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    aget-wide v12, p1, v11

    mul-double/2addr v3, v12

    aget-wide v12, p1, v11

    add-int/lit8 v5, v11, -0x1

    aget-wide v14, p1, v5

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-double/2addr v3, v12

    mul-double v8, v1, v3

    .line 99
    .local v8, "rdist":D
    :goto_41
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/sidor/androidapps/simpletuner/Tuning;->strings:[Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    new-instance v1, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    add-int/lit8 v3, v11, 0x1

    aget-wide v4, p1, v11

    aget-object v10, p2, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;-><init>(Lorg/sidor/androidapps/simpletuner/Tuning;IDDDLjava/lang/String;)V

    aput-object v1, v12, v11

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 95
    .end local v6    # "ldist":D
    .end local v8    # "rdist":D
    :cond_57
    aget-wide v1, p1, v11

    add-int/lit8 v3, v11, -0x1

    aget-wide v3, p1, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v6, v1, v3

    goto :goto_26

    .line 97
    .restart local v6    # "ldist":D
    :cond_63
    aget-wide v1, p1, v11

    add-int/lit8 v3, v11, 0x1

    aget-wide v3, p1, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v8, v1, v3

    goto :goto_41
.end method
