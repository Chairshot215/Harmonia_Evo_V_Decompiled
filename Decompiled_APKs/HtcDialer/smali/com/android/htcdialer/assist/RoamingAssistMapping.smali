.class public Lcom/android/htcdialer/assist/RoamingAssistMapping;
.super Ljava/lang/Object;
.source "RoamingAssistMapping.java"


# static fields
.field private static final ccMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tcMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    .line 19
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "412"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "412"

    const-string v2, "93"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "276"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "276"

    const-string v2, "355"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "544"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "544"

    const-string v2, "1-684"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "213"

    const-string v2, "376"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "631"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "631"

    const-string v2, "244"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "344"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "344"

    const-string v2, "1-268"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "722"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "722"

    const-string v2, "54"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "283"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "283"

    const-string v2, "374"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "505"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "505"

    const-string v2, "61"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "232"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "232"

    const-string v2, "43"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "400"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "400"

    const-string v2, "994"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "426"

    const-string v2, "973"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "470"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "470"

    const-string v2, "880"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "342"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "342"

    const-string v2, "1-246"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "257"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "257"

    const-string v2, "375"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "206"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "206"

    const-string v2, "32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "702"

    const-string v2, "501"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "616"

    const-string v2, "229"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "350"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "350"

    const-string v2, "1-441"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "402"

    const-string v2, "975"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "736"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "736"

    const-string v2, "591"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "218"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "218"

    const-string v2, "387"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "652"

    const-string v2, "267"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "724"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "724"

    const-string v2, "55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "348"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "348"

    const-string v2, "1-284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "528"

    const-string v2, "673"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "284"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "284"

    const-string v2, "359"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "613"

    const-string v2, "226"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "414"

    const-string v2, "95"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "642"

    const-string v2, "257"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "456"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "456"

    const-string v2, "855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "624"

    const-string v2, "237"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "302"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "302"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "625"

    const-string v2, "238"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "346"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "346"

    const-string v2, "1-345"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "623"

    const-string v2, "236"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "622"

    const-string v2, "235"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "730"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "730"

    const-string v2, "56"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "460"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "460"

    const-string v2, "86"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "732"

    const-string v2, "57"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "654"

    const-string v2, "269"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "548"

    const-string v2, "682"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "712"

    const-string v2, "506"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "219"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "219"

    const-string v2, "385"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "368"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "368"

    const-string v2, "53"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "280"

    const-string v2, "357"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "230"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "230"

    const-string v2, "420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "630"

    const-string v2, "243"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "238"

    const-string v2, "45"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "638"

    const-string v2, "253"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "366"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "366"

    const-string v2, "1-767"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "370"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "370"

    const-string v2, "1-809"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "514"

    const-string v2, "670"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "740"

    const-string v2, "593"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "602"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "602"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "706"

    const-string v2, "503"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "627"

    const-string v2, "240"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "657"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "657"

    const-string v2, "291"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "248"

    const-string v2, "372"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "636"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "636"

    const-string v2, "251"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "750"

    const-string v2, "500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "288"

    const-string v2, "298"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "542"

    const-string v2, "679"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "244"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "244"

    const-string v2, "358"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "208"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "208"

    const-string v2, "33"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "742"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "742"

    const-string v2, "594"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "547"

    const-string v2, "689"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "628"

    const-string v2, "241"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "282"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "282"

    const-string v2, "995"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "262"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "262"

    const-string v2, "49"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "620"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "620"

    const-string v2, "233"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "266"

    const-string v2, "350"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "202"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "202"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "290"

    const-string v2, "299"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "352"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "352"

    const-string v2, "1-473"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "340"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "340"

    const-string v2, "590"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "535"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "535"

    const-string v2, "1-671"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "704"

    const-string v2, "502"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "611"

    const-string v2, "224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "632"

    const-string v2, "245"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "738"

    const-string v2, "592"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "372"

    const-string v2, "509"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "708"

    const-string v2, "504"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "454"

    const-string v2, "852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "216"

    const-string v2, "36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "274"

    const-string v2, "354"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "404"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "404"

    const-string v2, "91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "405"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "405"

    const-string v2, "91"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "510"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "510"

    const-string v2, "62"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "432"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "432"

    const-string v2, "98"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "272"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "272"

    const-string v2, "353"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "425"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "425"

    const-string v2, "972"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "222"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "222"

    const-string v2, "39"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "338"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "338"

    const-string v2, "1-876"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "440"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "440"

    const-string v2, "81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "441"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "441"

    const-string v2, "81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "416"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "416"

    const-string v2, "962"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "401"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "401"

    const-string v2, "7-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "639"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "639"

    const-string v2, "254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "545"

    const-string v2, "686"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "419"

    const-string v2, "965"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "437"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "437"

    const-string v2, "996"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "457"

    const-string v2, "856"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "247"

    const-string v2, "371"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "415"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "415"

    const-string v2, "961"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "651"

    const-string v2, "266"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "618"

    const-string v2, "231"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "606"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "606"

    const-string v2, "218"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "295"

    const-string v2, "423"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "246"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "246"

    const-string v2, "370"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "270"

    const-string v2, "352"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "455"

    const-string v2, "853"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "294"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "294"

    const-string v2, "389"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "646"

    const-string v2, "261"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "650"

    const-string v2, "265"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "502"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "502"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "472"

    const-string v2, "960"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "610"

    const-string v2, "223"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "278"

    const-string v2, "356"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "340"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "340"

    const-string v2, "596"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "609"

    const-string v2, "222"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "617"

    const-string v2, "230"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "334"

    const-string v2, "52"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "259"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "259"

    const-string v2, "373"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "212"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "212"

    const-string v2, "377"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "428"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "428"

    const-string v2, "976"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "297"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "297"

    const-string v2, "382"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "354"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "354"

    const-string v2, "1-664"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "604"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "604"

    const-string v2, "212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "643"

    const-string v2, "258"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "649"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "649"

    const-string v2, "264"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "429"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "429"

    const-string v2, "977"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "204"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "204"

    const-string v2, "31"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "362"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "362"

    const-string v2, "599"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "546"

    const-string v2, "687"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "530"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "530"

    const-string v2, "64"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "710"

    const-string v2, "505"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "614"

    const-string v2, "227"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "621"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "621"

    const-string v2, "234"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "467"

    const-string v2, "850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "242"

    const-string v2, "47"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "422"

    const-string v2, "968"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "410"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "410"

    const-string v2, "92"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "714"

    const-string v2, "507"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "537"

    const-string v2, "675"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "744"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "744"

    const-string v2, "595"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "716"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "716"

    const-string v2, "51"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "515"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "515"

    const-string v2, "63"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "260"

    const-string v2, "48"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "268"

    const-string v2, "351"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "330"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "330"

    const-string v2, "1-787"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "427"

    const-string v2, "974"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "629"

    const-string v2, "242"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "647"

    const-string v2, "262"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "226"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "226"

    const-string v2, "40"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "250"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "250"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "635"

    const-string v2, "250"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "n.a"

    const-string v2, "290"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "356"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "356"

    const-string v2, "1-869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "358"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "358"

    const-string v2, "1-758"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "308"

    const-string v2, "508"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "360"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "360"

    const-string v2, "1-784"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "549"

    const-string v2, "685"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "292"

    const-string v2, "378"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "626"

    const-string v2, "239"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "420"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "420"

    const-string v2, "966"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "608"

    const-string v2, "221"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "220"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "220"

    const-string v2, "381"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "633"

    const-string v2, "248"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "619"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "619"

    const-string v2, "232"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "525"

    const-string v2, "65"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "231"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "231"

    const-string v2, "421"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "540"

    const-string v2, "677"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "637"

    const-string v2, "252"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "655"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "655"

    const-string v2, "27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "450"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "450"

    const-string v2, "82"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "214"

    const-string v2, "34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "413"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "413"

    const-string v2, "94"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "634"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "634"

    const-string v2, "249"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "746"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "746"

    const-string v2, "597"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "653"

    const-string v2, "268"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "240"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "240"

    const-string v2, "46"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "228"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "228"

    const-string v2, "41"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "417"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "417"

    const-string v2, "963"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "466"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "466"

    const-string v2, "886"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "436"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "436"

    const-string v2, "992"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "640"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "640"

    const-string v2, "255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "520"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "520"

    const-string v2, "66"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "364"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "364"

    const-string v2, "1-242"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "607"

    const-string v2, "220"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "615"

    const-string v2, "228"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "539"

    const-string v2, "676"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "374"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "374"

    const-string v2, "1-868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "605"

    const-string v2, "216"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "286"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "286"

    const-string v2, "90"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "438"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "438"

    const-string v2, "993"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "376"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "376"

    const-string v2, "1-649"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "641"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "641"

    const-string v2, "256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "255"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "255"

    const-string v2, "380"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "424"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "424"

    const-string v2, "971"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "234"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "234"

    const-string v2, "44"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "235"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "235"

    const-string v2, "44"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "310"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "310"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "311"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "311"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "312"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "312"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "313"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "313"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "314"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "314"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "315"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "315"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "316"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "316"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "748"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "748"

    const-string v2, "598"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "434"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "434"

    const-string v2, "998"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "541"

    const-string v2, "678"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "225"

    const-string v2, "379"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "734"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "734"

    const-string v2, "58"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "452"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "452"

    const-string v2, "84"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "421"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "421"

    const-string v2, "967"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "645"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "645"

    const-string v2, "260"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    const-string v1, "648"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    const-string v1, "648"

    const-string v2, "263"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 573
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCountryInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "mcc"

    .prologue
    .line 585
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 586
    .local v2, info:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p0, v2, v4

    .line 587
    const/4 v5, 0x1

    sget-object v4, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    aput-object v4, v2, v5

    .line 588
    const-string v0, ""

    .line 591
    .local v0, cc:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 599
    :cond_0
    :goto_1
    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 601
    return-object v2

    .line 587
    .end local v0           #cc:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 592
    .restart local v0       #cc:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 594
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "n.a"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    const-string v0, "SH"

    goto :goto_1
.end method

.method public static final getMapping()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->ccMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final getTrunkCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 577
    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/htcdialer/assist/RoamingAssistMapping;->tcMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
