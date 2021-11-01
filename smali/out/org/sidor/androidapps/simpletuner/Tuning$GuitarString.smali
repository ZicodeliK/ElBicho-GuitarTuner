.class public Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;
.super Ljava/lang/Object;
.source "Tuning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/Tuning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuitarString"
.end annotation


# instance fields
.field public freq:D

.field public maxFreq:D

.field public minFreq:D

.field public name:Ljava/lang/String;

.field public stringId:I

.field final synthetic this$0:Lorg/sidor/androidapps/simpletuner/Tuning;


# direct methods
.method public constructor <init>(Lorg/sidor/androidapps/simpletuner/Tuning;IDDDLjava/lang/String;)V
    .registers 10
    .param p2, "s"    # I
    .param p3, "f"    # D
    .param p5, "mif"    # D
    .param p7, "maf"    # D
    .param p9, "n"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->this$0:Lorg/sidor/androidapps/simpletuner/Tuning;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p2, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->stringId:I

    .line 77
    iput-wide p3, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->freq:D

    .line 78
    iput-wide p5, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->minFreq:D

    .line 79
    iput-wide p7, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->maxFreq:D

    .line 80
    iput-object p9, p0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->name:Ljava/lang/String;

    return-void
.end method
