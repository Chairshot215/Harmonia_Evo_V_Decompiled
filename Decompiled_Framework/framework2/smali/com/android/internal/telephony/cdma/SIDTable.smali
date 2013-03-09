.class public Lcom/android/internal/telephony/cdma/SIDTable;
.super Ljava/lang/Object;
.source "SIDTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SIDTable"

.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x2c7f

    const/16 v10, 0x2c70

    const/16 v9, 0x2da

    const/16 v8, 0x1b2

    const/16 v7, 0xfa

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xca

    const-string v3, "gr"

    const/16 v4, 0x5e80

    const/16 v5, 0x5eff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xcc

    const-string v2, "nl"

    const/16 v3, 0x5e00

    const/16 v4, 0x5e7f

    const-string v5, "Europe/Amsterdam"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xce

    const-string v3, "be"

    const/16 v4, 0x5d80

    const/16 v5, 0x5dff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xd0

    const-string v2, "fr"

    const/16 v3, 0x7008

    const/16 v4, 0x5d7f

    const-string v5, "Europe/Paris"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xd4

    const-string v3, "mc"

    const/16 v4, 0x2a00

    const/16 v5, 0x2a0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xd6

    const-string v2, "es"

    const/16 v3, 0x5c00

    const/16 v4, 0x5c7f

    const-string v5, "Europe/Madrid"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xd8

    const-string v3, "hu"

    const/16 v4, 0x5c00

    const/16 v5, 0x5c7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xdc

    const-string v3, "rs"

    const/16 v4, 0x5b80

    const/16 v5, 0x5bff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xde

    const-string v2, "it"

    const/16 v3, 0x5a80

    const/16 v4, 0x5b7f

    const-string v5, "Europe/Rome"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xe2

    const-string v3, "ro"

    const/16 v4, 0x3e80

    const/16 v5, 0x3f8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xe4

    const-string v2, "ch"

    const/16 v3, 0x5a00

    const/16 v4, 0x5a7f

    const-string v5, "Europe/Zurich"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xe6

    const-string v2, "cz"

    const/16 v3, 0x3f00

    const/16 v4, 0x3f7f

    const-string v5, "Europe/Prague"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xe8

    const-string v2, "at"

    const/16 v3, 0x5980

    const/16 v4, 0x59ff

    const-string v5, "Europe/Vienna"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xea

    const-string v2, "gb"

    const/16 v3, 0x5880

    const/16 v4, 0x597f

    const-string v5, "Europe/London"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0xeb

    const-string v2, "gb"

    const/16 v3, 0x5880

    const/16 v4, 0x597f

    const-string v5, "Europe/London"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xee

    const-string v3, "dk"

    const/16 v4, 0x5800

    const/16 v5, 0x580f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xf0

    const-string v3, "se"

    const/16 v4, 0x5780

    const/16 v5, 0x5783

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xf2

    const-string v3, "no"

    const/16 v4, 0x5700

    const/16 v5, 0x577f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xf4

    const-string v3, "fi"

    const/16 v4, 0x5f80

    const/16 v5, 0x5f83

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xf7

    const-string v3, "lv"

    const/16 v4, 0x2a20

    const/16 v5, 0x2a21

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xf8

    const-string v3, "ee"

    const/16 v4, 0x2a78

    const/16 v5, 0x2a7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "ru"

    const/16 v3, 0x2c80

    const/16 v4, 0x2d22

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "ru"

    const/16 v3, 0x2d24

    const/16 v4, 0x2d4f

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "ru"

    const/16 v3, 0x2d51

    const/16 v4, 0x2fff

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0xff

    const-string v3, "ua"

    const/16 v4, 0x3e22

    const/16 v5, 0x3e31

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x103

    const-string v3, "md"

    const/16 v4, 0x3e32

    const/16 v5, 0x3e41

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x104

    const-string v2, "pl"

    const/16 v3, 0x3f80

    const/16 v4, 0x3f8f

    const-string v5, "Europe/Warsaw"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x104

    const-string v2, "pl"

    const/16 v3, 0x3f90

    const/16 v4, 0x3fff

    const-string v5, "Europe/Warsaw"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x106

    const-string v2, "de"

    const/16 v3, 0x5600

    const/16 v4, 0x56ff

    const-string v5, "Europe/Berlin"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x10a

    const-string v3, "gi"

    const/16 v4, 0x7ad0

    const/16 v5, 0x7adf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x10c

    const-string v3, "pt"

    const/16 v4, 0x5f00

    const/16 v5, 0x5f1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x10e

    const-string v3, "lu"

    const/16 v4, 0x5f20

    const/16 v5, 0x5f3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x110

    const-string v2, "ie"

    const/16 v3, 0x5f40

    const/16 v4, 0x5f43

    const-string v5, "Europe/Dublin"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x112

    const-string v3, "is"

    const/16 v4, 0x5f60

    const/16 v5, 0x5f7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x114

    const-string v3, "al"

    const/16 v4, 0x7ae0

    const/16 v5, 0x7aef

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x116

    const-string v3, "mt"

    const/16 v4, 0x7af0

    const/16 v5, 0x7af3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x118

    const-string v3, "cy"

    const/16 v4, 0x79e0

    const/16 v5, 0x79ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x11c

    const-string v3, "bg"

    const/16 v4, 0x3ce0

    const/16 v5, 0x3cff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x11e

    const-string v3, "tr"

    const/16 v4, 0x3800

    const/16 v5, 0x387f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x120

    const-string v3, "fo"

    const/16 v4, 0x1f00

    const/16 v5, 0x1f0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x122

    const-string v3, "gl"

    const/16 v4, 0x1f10

    const/16 v5, 0x1f1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x124

    const-string v3, "sm"

    const/16 v4, 0x2a10

    const/16 v5, 0x2a1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x12e

    const-string v3, "ca"

    const/16 v4, 0x4000

    const/16 v5, 0x47ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x134

    const-string v3, "pm"

    const/16 v4, 0x1f30

    const/16 v5, 0x1f3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x134

    const-string v3, "pm"

    const/16 v4, 0x2a40

    const/16 v5, 0x2a4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x136

    const-string v3, "us"

    const/4 v4, 0x1

    const/16 v5, 0x87f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x137

    const-string v3, "us"

    const/16 v4, 0x900

    const/16 v5, 0x1dff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x138

    const-string v3, "us"

    const/16 v4, 0x543f

    const/16 v5, 0x547e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x14e

    const-string v3, "mx"

    const/16 v4, 0x6000

    const/16 v5, 0x61f3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x14e

    const-string v3, "mx"

    const/16 v4, 0x620c

    const/16 v5, 0x6224

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x152

    const-string v3, "jm"

    const/16 v4, 0x1ff0

    const/16 v5, 0x1fff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x154

    const-string v3, "gp"

    const/16 v4, 0x7a80

    const/16 v5, 0x7a8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x156

    const-string v3, "bb"

    const/16 v4, 0x1fe0

    const/16 v5, 0x1fef

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x158

    const-string v3, "ag"

    const/16 v4, 0x1fd0

    const/16 v5, 0x1fdf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x15a

    const-string v3, "ky"

    const/16 v4, 0x1fc0

    const/16 v5, 0x1fcf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x15c

    const-string v3, "vg"

    const/16 v4, 0x1fb0

    const/16 v5, 0x1fbf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x160

    const-string v3, "gd"

    const/16 v4, 0x1f80

    const/16 v5, 0x1f8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x162

    const-string v3, "ms"

    const/16 v4, 0x1f70

    const/16 v5, 0x1f7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x164

    const-string v3, "kn"

    const/16 v4, 0x1f60

    const/16 v5, 0x1f6f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x166

    const-string v3, "lc"

    const/16 v4, 0x1f50

    const/16 v5, 0x1f5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x168

    const-string v3, "vc"

    const/16 v4, 0x1f40

    const/16 v5, 0x1f47

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x16a

    const-string v3, "nl"

    const/16 v4, 0x7aa0

    const/16 v5, 0x7aaf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x16b

    const-string v3, "aw"

    const/16 v4, 0x25b0

    const/16 v5, 0x25bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x16c

    const-string v3, "bs"

    const/16 v4, 0x1f90

    const/16 v5, 0x1f9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x16e

    const-string v3, "dm"

    const/16 v4, 0x2590

    const/16 v5, 0x259f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x170

    const-string v3, "cu"

    const/16 v4, 0x7e00

    const/16 v5, 0x7e7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x172

    const-string v3, "do"

    const/16 v4, 0x2280

    const/16 v5, 0x228f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x174

    const-string v3, "ht"

    const/16 v4, 0x7f60

    const/16 v5, 0x7f7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x176

    const-string v3, "tt"

    const/16 v4, 0x2660

    const/16 v5, 0x267f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x178

    const-string v3, "tc"

    const/16 v4, 0x2a30

    const/16 v5, 0x2a3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x191

    const-string v3, "kz"

    const/16 v4, 0x22e0

    const/16 v5, 0x22ef

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x194

    const-string v3, "in"

    const/16 v4, 0x3880

    const/16 v5, 0x39ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x195

    const-string v3, "in"

    const/16 v4, 0x3880

    const/16 v5, 0x39ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x19a

    const-string v3, "pk"

    const/16 v4, 0x3a00

    const/16 v5, 0x3a7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x19c

    const-string v3, "af"

    const/16 v4, 0x3a80

    const/16 v5, 0x3aff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x19d

    const-string v3, "lk"

    const/16 v4, 0x3b00

    const/16 v5, 0x3b7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x19e

    const-string v3, "mm"

    const/16 v4, 0x3b80

    const/16 v5, 0x3bff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x19f

    const-string v3, "lb"

    const/16 v4, 0x3c00

    const/16 v5, 0x3c1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a0

    const-string v3, "jo"

    const/16 v4, 0x3c20

    const/16 v5, 0x3c3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a1

    const-string v3, "sy"

    const/16 v4, 0x3c40

    const/16 v5, 0x3c5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a2

    const-string v3, "iq"

    const/16 v4, 0x3c60

    const/16 v5, 0x3c7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a3

    const-string v3, "kw"

    const/16 v4, 0x2c30

    const/16 v5, 0x2c3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a4

    const-string v3, "sa"

    const/16 v4, 0x3c80

    const/16 v5, 0x3c9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a5

    const-string v3, "ye"

    const/16 v4, 0x2c40

    const/16 v5, 0x2c4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a5

    const-string v3, "ye"

    const/16 v4, 0x2c60

    const/16 v5, 0x2c6f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a6

    const-string v3, "om"

    const/16 v4, 0x2c50

    const/16 v5, 0x2c5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a8

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1a9

    const-string v3, "il"

    const/16 v4, 0x2100

    const/16 v5, 0x211f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1aa

    const-string v3, "bh"

    const/16 v4, 0x7ab0

    const/16 v5, 0x7abf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1ab

    const-string v3, "qa"

    const/16 v4, 0x7ac0

    const/16 v5, 0x7acf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1ac

    const-string v3, "mn"

    const/16 v4, 0x3ca0

    const/16 v5, 0x3cbf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1ad

    const-string v3, "np"

    const/16 v4, 0x3cc0

    const/16 v5, 0x3cdf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1ae

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1af

    const-string v3, "ae"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1b0

    const-string v3, "ir"

    const/16 v4, 0x3d00

    const/16 v5, 0x3d7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "uz"

    const/16 v3, 0x2a50

    const/16 v4, 0x2a67

    invoke-direct {v1, v8, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "uz"

    const/16 v3, 0x2d23

    const/16 v4, 0x2d23

    invoke-direct {v1, v8, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "uz"

    const/16 v3, 0x2d50

    const/16 v4, 0x2d50

    invoke-direct {v1, v8, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1b4

    const-string v3, "tj"

    const/16 v4, 0x2a68

    const/16 v5, 0x2a77

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1b5

    const-string v3, "kg"

    const/16 v4, 0x542e

    const/16 v5, 0x543e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x1b8

    const-string v2, "jp"

    const/16 v3, 0x3000

    const/16 v4, 0x33ff

    const-string v5, "Asia/Tokyo"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x1b9

    const-string v2, "jp"

    const/16 v3, 0x3000

    const/16 v4, 0x33ff

    const-string v5, "Asia/Tokyo"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c2

    const-string v3, "kr"

    const/16 v4, 0x880

    const/16 v5, 0x8ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c4

    const-string v3, "vn"

    const/16 v4, 0x3400

    const/16 v5, 0x347f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c6

    const-string v3, "hk"

    const/16 v4, 0x2990

    const/16 v5, 0x299f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c7

    const-string v3, "mo"

    const/16 v4, 0x2c20

    const/16 v5, 0x2c2f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c8

    const-string v3, "kh"

    const/16 v4, 0x2b60

    const/16 v5, 0x2b7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1c9

    const-string v3, "la"

    const/16 v4, 0x3480

    const/16 v5, 0x349f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    const/16 v4, 0x3500

    const/16 v5, 0x37ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1cc

    const-string v3, "cn"

    const/16 v4, 0x6400

    const/16 v5, 0x65ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1d2

    const-string v3, "tw"

    const/16 v4, 0x34c0

    const/16 v5, 0x34df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1d3

    const-string v3, "kp"

    const/16 v4, 0x2b40

    const/16 v5, 0x2b5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1d6

    const-string v3, "bd"

    const/16 v4, 0x34a0

    const/16 v5, 0x34bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1d8

    const-string v3, "mv"

    const/16 v4, 0x34e0

    const/16 v5, 0x34ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1f6

    const-string v3, "my"

    const/16 v4, 0x2880

    const/16 v5, 0x28ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x1f9

    const-string v2, "au"

    const/16 v3, 0x1e00

    const/16 v4, 0x1e7f

    const-string v5, "Australia/Sydney"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x1f9

    const-string v2, "au"

    const/16 v3, 0x2080

    const/16 v4, 0x20ff

    const-string v5, "Australia/Sydney"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x1fe

    const-string v3, "id"

    const/16 v4, 0x2900

    const/16 v5, 0x297f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x203

    const-string v3, "ph"

    const/16 v4, 0x2980

    const/16 v5, 0x298f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x203

    const-string v3, "ph"

    const/16 v4, 0x29a0

    const/16 v5, 0x29ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x208

    const-string v3, "th"

    const/16 v4, 0x2000

    const/16 v5, 0x201f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x20d

    const-string v2, "sg"

    const/16 v3, 0x25c0

    const/16 v4, 0x25cf

    const-string v5, "Singapore"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x210

    const-string v3, "bn"

    const/16 v4, 0x2a80

    const/16 v5, 0x2a8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x212

    const-string v2, "nz"

    const/16 v3, 0x2180

    const/16 v4, 0x21ff

    const-string v5, "Pacific/Auckland"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x216

    const-string v3, "mp"

    const/16 v4, 0x25d0

    const/16 v5, 0x25df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x217

    const-string v3, "gu"

    const/16 v4, 0x25e0

    const/16 v5, 0x25ef

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x218

    const-string v3, "nr"

    const/16 v4, 0x2a90

    const/16 v5, 0x2a9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x219

    const-string v3, "pg"

    const/16 v4, 0x2b00

    const/16 v5, 0x2b1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x21b

    const-string v3, "to"

    const/16 v4, 0x2aa0

    const/16 v5, 0x2aaf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x21c

    const-string v3, "sb"

    const/16 v4, 0x2ab0

    const/16 v5, 0x2abf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x21d

    const-string v3, "vu"

    const/16 v4, 0x2ac0

    const/16 v5, 0x2acf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x21e

    const-string v3, "fj"

    const/16 v4, 0x2ad0

    const/16 v5, 0x2adf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x21f

    const-string v3, "wf"

    const/16 v4, 0x2af0

    const/16 v5, 0x2aff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x221

    const-string v3, "ki"

    const/16 v4, 0x2bc0

    const/16 v5, 0x2bcf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x222

    const-string v3, "nc"

    const/16 v4, 0x2bd0

    const/16 v5, 0x2bdf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x223

    const-string v3, "pf"

    const/16 v4, 0x2bf0

    const/16 v5, 0x2bff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x224

    const-string v3, "ck"

    const/16 v4, 0x2b80

    const/16 v5, 0x2b8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x225

    const-string v3, "ws"

    const/16 v4, 0x2bb0

    const/16 v5, 0x2bbf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x226

    const-string v3, "fm"

    const/16 v4, 0x2b20

    const/16 v5, 0x2b3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x227

    const-string v3, "mh"

    const/16 v4, 0x2c10

    const/16 v5, 0x2c1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x228

    const-string v3, "pw"

    const/16 v4, 0x2ae0

    const/16 v5, 0x2aef

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25a

    const-string v3, "eg"

    const/16 v4, 0x2020

    const/16 v5, 0x203f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25b

    const-string v3, "dz"

    const/16 v4, 0x2060

    const/16 v5, 0x207f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25c

    const-string v3, "ma"

    const/16 v4, 0x2040

    const/16 v5, 0x205f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25d

    const-string v3, "tn"

    const/16 v4, 0x2120

    const/16 v5, 0x213f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25e

    const-string v3, "ly"

    const/16 v4, 0x2140

    const/16 v5, 0x215f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x25f

    const-string v3, "gm"

    const/16 v4, 0x2160

    const/16 v5, 0x217f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x260

    const-string v3, "sn"

    const/16 v4, 0x2200

    const/16 v5, 0x221f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x261

    const-string v3, "mr"

    const/16 v4, 0x2220

    const/16 v5, 0x223f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x262

    const-string v3, "ml"

    const/16 v4, 0x2240

    const/16 v5, 0x225f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x263

    const-string v3, "gn"

    const/16 v4, 0x2260

    const/16 v5, 0x227f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x264

    const-string v3, "ci"

    const/16 v4, 0x2300

    const/16 v5, 0x231f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x265

    const-string v3, "bf"

    const/16 v4, 0x2320

    const/16 v5, 0x233f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x266

    const-string v3, "ne"

    const/16 v4, 0x2340

    const/16 v5, 0x235f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x267

    const-string v3, "tg"

    const/16 v4, 0x2360

    const/16 v5, 0x237f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x268

    const-string v3, "bj"

    const/16 v4, 0x2380

    const/16 v5, 0x239f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x269

    const-string v3, "mu"

    const/16 v4, 0x23a0

    const/16 v5, 0x23bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26a

    const-string v3, "lr"

    const/16 v4, 0x23c0

    const/16 v5, 0x23df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26b

    const-string v3, "sl"

    const/16 v4, 0x23e0

    const/16 v5, 0x23ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26c

    const-string v3, "gh"

    const/16 v4, 0x2400

    const/16 v5, 0x241f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26d

    const-string v3, "ng"

    const/16 v4, 0x2420

    const/16 v5, 0x243f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26e

    const-string v3, "td"

    const/16 v4, 0x2440

    const/16 v5, 0x245f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x26f

    const-string v3, "cf"

    const/16 v4, 0x2460

    const/16 v5, 0x247f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x270

    const-string v3, "cm"

    const/16 v4, 0x2480

    const/16 v5, 0x249f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x271

    const-string v3, "cv"

    const/16 v4, 0x2290

    const/16 v5, 0x229f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x272

    const-string v3, "st"

    const/16 v4, 0x22a0

    const/16 v5, 0x22af

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x273

    const-string v3, "gq"

    const/16 v4, 0x24a0

    const/16 v5, 0x24bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x274

    const-string v3, "ga"

    const/16 v4, 0x24c0

    const/16 v5, 0x24df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x275

    const-string v3, "cg"

    const/16 v4, 0x24e0

    const/16 v5, 0x24ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x276

    const-string v3, "cg"

    const/16 v4, 0x24e0

    const/16 v5, 0x24ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x277

    const-string v3, "ao"

    const/16 v4, 0x2520

    const/16 v5, 0x253f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x278

    const-string v3, "gw"

    const/16 v4, 0x2260

    const/16 v5, 0x227f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x279

    const-string v3, "sc"

    const/16 v4, 0x22c0

    const/16 v5, 0x22cf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27a

    const-string v3, "sd"

    const/16 v4, 0x2560

    const/16 v5, 0x257f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27b

    const-string v3, "rw"

    const/16 v4, 0x2600

    const/16 v5, 0x261f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27c

    const-string v3, "et"

    const/16 v4, 0x2620

    const/16 v5, 0x263f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27d

    const-string v3, "so"

    const/16 v4, 0x2640

    const/16 v5, 0x265f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27e

    const-string v3, "dj"

    const/16 v4, 0x22d0

    const/16 v5, 0x22df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x27f

    const-string v3, "ke"

    const/16 v4, 0x2680

    const/16 v5, 0x269f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x280

    const-string v3, "tz"

    const/16 v4, 0x26a0

    const/16 v5, 0x26bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x281

    const-string v3, "ug"

    const/16 v4, 0x26c0

    const/16 v5, 0x26df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x282

    const-string v3, "bi"

    const/16 v4, 0x26e0

    const/16 v5, 0x26ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x283

    const-string v3, "mz"

    const/16 v4, 0x2700

    const/16 v5, 0x271f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x285

    const-string v3, "zm"

    const/16 v4, 0x2720

    const/16 v5, 0x273f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x286

    const-string v3, "mg"

    const/16 v4, 0x2740

    const/16 v5, 0x275f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x287

    const-string v3, "re"

    const/16 v4, 0x22f0

    const/16 v5, 0x22ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x288

    const-string v3, "zw"

    const/16 v4, 0x2760

    const/16 v5, 0x277f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x289

    const-string v3, "na"

    const/16 v4, 0x2780

    const/16 v5, 0x279f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x28a

    const-string v3, "mw"

    const/16 v4, 0x27a0

    const/16 v5, 0x27bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x28b

    const-string v3, "ls"

    const/16 v4, 0x2580

    const/16 v5, 0x258f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x28c

    const-string v3, "bw"

    const/16 v4, 0x27c0

    const/16 v5, 0x27df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x28d

    const-string v3, "sz"

    const/16 v4, 0x25a0

    const/16 v5, 0x25af

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x28e

    const-string v3, "km"

    const/16 v4, 0x27e0

    const/16 v5, 0x27ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v1, 0x28f

    const-string v2, "za"

    const/16 v3, 0x2800

    const/16 v4, 0x287f

    const-string v5, "Africa/Johannesburg"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2be

    const-string v3, "bz"

    const/16 v4, 0x7f80

    const/16 v5, 0x7f89

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2c0

    const-string v3, "gt"

    const/16 v4, 0x7fa0

    const/16 v5, 0x7fbf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2c2

    const-string v3, "sv"

    const/16 v4, 0x7fc0

    const/16 v5, 0x7fdf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2c4

    const-string v3, "hn"

    const/16 v4, 0x7fe0

    const/16 v5, 0x7fff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2c6

    const-string v3, "ni"

    const/16 v4, 0x7f00

    const/16 v5, 0x7f1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2c8

    const-string v3, "cr"

    const/16 v4, 0x7f20

    const/16 v5, 0x7f3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2ca

    const-string v3, "pa"

    const/16 v4, 0x7f40

    const/16 v5, 0x7f5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2cc

    const-string v3, "pe"

    const/16 v4, 0x7e80

    const/16 v5, 0x7eff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2d2

    const-string v3, "ar"

    const/16 v4, 0x7d80

    const/16 v5, 0x7dff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2d4

    const-string v3, "br"

    const/16 v4, 0x7c80

    const/16 v5, 0x7d7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "cl"

    const/16 v3, 0x7c00

    const/16 v4, 0x7c0a

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "cl"

    const/16 v3, 0x7c41

    const/16 v4, 0x7c4c

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const-string v2, "cl"

    const/16 v3, 0x7c61

    const/16 v4, 0x7c6e

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2dc

    const-string v3, "co"

    const/16 v4, 0x7b80

    const/16 v5, 0x7bff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2de

    const-string v3, "ve"

    const/16 v4, 0x7b00

    const/16 v5, 0x7b7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2e0

    const-string v3, "bo"

    const/16 v4, 0x7a00

    const/16 v5, 0x7a1f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2e2

    const-string v3, "gy"

    const/16 v4, 0x7a20

    const/16 v5, 0x7a3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2e4

    const-string v3, "ec"

    const/16 v4, 0x7a40

    const/16 v5, 0x7a5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2e6

    const-string v3, "gf"

    const/16 v4, 0x7a60

    const/16 v5, 0x7a7f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2e8

    const-string v3, "py"

    const/16 v4, 0x7980

    const/16 v5, 0x799f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2ea

    const-string v3, "sr"

    const/16 v4, 0x79a0

    const/16 v5, 0x79bf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/16 v2, 0x2ec

    const-string v3, "uy"

    const/16 v4, 0x79c0

    const/16 v5, 0x79df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/telephony/cdma/SIDComparator;->getInstance()Lcom/android/internal/telephony/cdma/SIDComparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForSID(I)Ljava/lang/String;
    .locals 3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5f5

    if-ne p0, v1, :cond_0

    const-string v1, "mx"

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SIDTable;->entryForSID(I)Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SIDTable"

    const-string v2, "entry is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mIso:Ljava/lang/String;

    goto :goto_0
.end method

.method private static entryForSID(I)Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p0}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;I)V

    sget-object v3, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/telephony/cdma/SIDComparator;->getInstance()Lcom/android/internal/telephony/cdma/SIDComparator;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v3, "SIDTable"

    const-string v4, "index < 0"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cdma/SIDTable;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    goto :goto_0
.end method
