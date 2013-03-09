.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static STRING_PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e_sym:[Ljava/lang/String;

.field private static emoticon:[Ljava/lang/String;

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u0104"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u0130\u00cf\u00ce\u00cd\u00cc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u013d\u0139\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u0147\u0143\u00d1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u0150\u00d8\u0152\u00d6\u00d5\u00d4\u00d3\u00d2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158\u0154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u00df\u015a\u015e\u0160"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0162\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u0170\u016e\u00dc\u00db\u00da\u00d9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u017d\u0179\u017b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u0105"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u0131\u00ef\u00ee\u00ed\u00ec"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u013e\u013a\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u0148\u0144\u00f1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u0151\u00f8\u0153\u00f6\u00f5\u00f4\u00f3\u00f2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159\u0155"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00df\u015b\u015f\u0161"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0163\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u0171\u016f\u00fc\u00fb\u00fa\u00f9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017e\u017a\u017c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "!@#$%&*?/:_\"\'()-+;,.\u20ac\u00a5\u00a3~=\\^[]\u00a1\u00bf{}<>\u00a6\u00a7\u00ab\u00bb\u2026"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "www."

    aput-object v1, v0, v3

    const-string/jumbo v1, "m."

    aput-object v1, v0, v4

    const-string/jumbo v1, "mobile."

    aput-object v1, v0, v5

    const-string/jumbo v1, "wap."

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".edu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".org"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".biz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".gov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".mobi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/"

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/QwertyKeyListener;->e_sym:[Ljava/lang/String;

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":)"

    aput-object v1, v0, v3

    const-string v1, ";)"

    aput-object v1, v0, v4

    const-string v1, ":("

    aput-object v1, v0, v5

    const-string v1, ":\'("

    aput-object v1, v0, v6

    const-string v1, ":o"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ":P"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":$"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":S"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":D"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ":/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ":|"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ":O"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":@"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ":X"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ":["

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ":]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ":-)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ";-)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ":-("

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ":-O"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ":-P"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":-S"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ":-D"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":-/"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ":-#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ":-]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "=)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "=D"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "=("

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "=-P"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "=/"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "=]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "=["

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "<3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "^_~"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "^_^"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "^.^"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "-.-"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "-_-"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "*_*"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "o_o"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "O_O"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "T_T"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "U_U"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ">_<"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ">.<"

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/QwertyKeyListener;->emoticon:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->STRING_PICKER_SETS:Landroid/util/SparseArray;

    sget-object v0, Landroid/text/method/QwertyKeyListener;->STRING_PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef02

    sget-object v2, Landroid/text/method/QwertyKeyListener;->e_sym:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->STRING_PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef05

    sget-object v2, Landroid/text/method/QwertyKeyListener;->emoticon:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3

    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-int v4, p3, p2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sub-int v8, p3, p2

    invoke-static {v3, v9, v8, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    if-nez v6, :cond_1

    move-object v5, v7

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move-object v5, v6

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-static {p1, p2, v5, v9, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [C

    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p5, v6, :cond_1

    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private showStringPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 8

    const/4 v7, 0x1

    sget-object v0, Landroid/text/method/QwertyKeyListener;->STRING_PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p5, v7, :cond_1

    new-instance v0, Landroid/text/method/StringPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/method/StringPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;[Ljava/lang/String;ZC)V

    invoke-virtual {v0}, Landroid/text/method/StringPickerDialog;->show()V

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 44

    const/16 v34, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v34

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    if-ltz v39, :cond_1

    if-gez v38, :cond_2

    :cond_1
    const/16 v38, 0x0

    move/from16 v39, v38

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v6

    or-int/2addr v5, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    if-nez v5, :cond_4

    if-lez v10, :cond_4

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    if-lez v39, :cond_4

    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    move/from16 v0, v29

    if-eq v8, v0, :cond_3

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_4

    if-eqz p1, :cond_4

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_4
    const v5, 0xef01

    move/from16 v0, v29

    if-ne v0, v5, :cond_6

    if-eqz p1, :cond_5

    if-nez v10, :cond_5

    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const v5, 0xef02

    move/from16 v0, v29

    if-eq v0, v5, :cond_7

    const v5, 0xef05

    move/from16 v0, v29

    if-ne v0, v5, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    if-nez v10, :cond_8

    move/from16 v0, v29

    int-to-char v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showStringPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_9
    const v5, 0xef04

    move/from16 v0, v29

    if-ne v0, v5, :cond_a

    const-string/jumbo v5, "www."

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    const v5, 0xef03

    move/from16 v0, v29

    if-ne v0, v5, :cond_b

    const-string v5, ".com"

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_b
    const v5, 0xef00

    move/from16 v0, v29

    if-ne v0, v5, :cond_e

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    move/from16 v41, v38

    :goto_1
    if-lez v41, :cond_d

    sub-int v5, v38, v41

    const/4 v6, 0x4

    if-ge v5, v6, :cond_d

    add-int/lit8 v5, v41, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_d

    add-int/lit8 v41, v41, -0x1

    goto :goto_1

    :cond_c
    move/from16 v41, v39

    :cond_d
    const/16 v22, -0x1

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    const/16 v5, 0x10

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    :goto_2
    if-ltz v22, :cond_17

    move/from16 v39, v41

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move/from16 v29, v22

    :cond_e
    :goto_3
    if-eqz v29, :cond_21

    const/16 v25, 0x0

    const/high16 v5, -0x8000

    and-int v5, v5, v29

    if-eqz v5, :cond_f

    const/16 v25, 0x1

    const v5, 0x7fffffff

    and-int v29, v29, v5

    :cond_f
    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    move/from16 v0, v19

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    const/16 v37, 0x0

    sub-int v5, v38, v39

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_10

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    if-eqz v23, :cond_10

    move/from16 v29, v23

    const/16 v37, 0x1

    :cond_10
    if-nez v37, :cond_11

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move/from16 v39, v38

    :cond_11
    and-int/lit8 v5, v34, 0x1

    if-eqz v5, :cond_12

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v5, v0, v1}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v42

    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    move/from16 v0, v42

    move/from16 v1, v39

    if-ne v0, v1, :cond_18

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move/from16 v0, v29

    if-ne v5, v0, :cond_18

    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_12
    :goto_4
    move/from16 v0, v39

    move/from16 v1, v38

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_13
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v39

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move/from16 v0, v29

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v32

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v25, :cond_14

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    and-int/lit8 v5, v34, 0x2

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1c

    const/16 v5, 0x20

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x9

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0xa

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x2c

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x2e

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x21

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x3f

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    const/16 v5, 0x22

    move/from16 v0, v29

    if-eq v0, v5, :cond_15

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1c

    :cond_15
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v32

    if-eq v5, v0, :cond_1c

    move/from16 v43, v32

    :goto_5
    if-lez v43, :cond_16

    add-int/lit8 v5, v43, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v5, 0x27

    if-eq v8, v5, :cond_1a

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v43

    move/from16 v3, v32

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_1c

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, v36

    array-length v5, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_1b

    aget-object v5, v36, v17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_3

    :cond_18
    shl-int/lit8 v27, v29, 0x10

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    if-nez v39, :cond_19

    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v9, v27, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    :cond_19
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v6, v39, -0x1

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    :cond_1a
    add-int/lit8 v43, v43, -0x1

    goto :goto_5

    :cond_1b
    sub-int v5, v32, v43

    new-array v0, v5, [C

    move-object/from16 v33, v0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1c
    and-int/lit8 v5, v34, 0x4

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_20

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    add-int/lit8 v5, v38, -0x3

    if-ltz v5, :cond_20

    add-int/lit8 v5, v38, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_20

    add-int/lit8 v5, v38, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_20

    add-int/lit8 v5, v38, -0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v30, v38, -0x3

    :goto_7
    if-lez v30, :cond_1e

    const/16 v5, 0x22

    if-eq v8, v5, :cond_1d

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1e

    :cond_1d
    add-int/lit8 v5, v30, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v30, v30, -0x1

    goto :goto_7

    :cond_1e
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    add-int/lit8 v5, v38, -0x2

    add-int/lit8 v6, v38, -0x1

    const-string v7, "."

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0x43

    move/from16 v0, p3

    if-ne v0, v5, :cond_26

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_22

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_22
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_26

    const/16 v24, 0x1

    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v39

    if-ne v5, v0, :cond_23

    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_23

    const/16 v24, 0x2

    :cond_23
    sub-int v5, v39, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, v36

    array-length v5, v0

    if-lez v5, :cond_26

    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v36, v5

    #getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move/from16 v0, v39

    move/from16 v1, v26

    if-lt v0, v1, :cond_25

    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    add-int/lit8 v5, v26, -0x1

    if-ltz v5, :cond_24

    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v6, v26, -0x1

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_8
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_24
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    :cond_25
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_26
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method
