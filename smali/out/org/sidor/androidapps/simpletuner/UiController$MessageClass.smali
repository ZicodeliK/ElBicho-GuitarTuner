.class final enum Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;
.super Ljava/lang/Enum;
.source "UiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/UiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field public static final enum TOO_NOISY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field public static final enum TOO_QUIET:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field public static final enum TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field public static final enum WEIRD_FREQUENCY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    const-string v1, "TUNING_IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 24
    new-instance v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    const-string v1, "WEIRD_FREQUENCY"

    invoke-direct {v0, v1, v3}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->WEIRD_FREQUENCY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 25
    new-instance v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    const-string v1, "TOO_QUIET"

    invoke-direct {v0, v1, v4}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 26
    new-instance v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    const-string v1, "TOO_NOISY"

    invoke-direct {v0, v1, v5}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_NOISY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->WEIRD_FREQUENCY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_NOISY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    aput-object v1, v0, v5

    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    return-object v0
.end method

.method public static values()[Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ENUM$VALUES:[Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    array-length v1, v0

    new-array v2, v1, [Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
