.class Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;
.super Ljava/lang/Object;
.source "Tuning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/Tuning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TuningType"
.end annotation


# instance fields
.field public freqs:[D

.field public humanReadableName:Ljava/lang/String;

.field public stringNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[D[Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "f"    # [D
    .param p3, "sn"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->humanReadableName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->freqs:[D

    .line 17
    iput-object p3, p0, Lorg/sidor/androidapps/simpletuner/Tuning$TuningType;->stringNames:[Ljava/lang/String;

    .line 18
    return-void
.end method
