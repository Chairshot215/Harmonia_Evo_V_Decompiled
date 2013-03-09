.class public Lcom/android/mms/util/AccentFilter;
.super Ljava/lang/Object;
.source "AccentFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final unicodeToAscii:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    .line 20
    invoke-static {}, Lcom/android/mms/util/AccentFilter;->initiateTransformArray()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initiateTransformArray()V
    .locals 7

    .prologue
    const/16 v6, 0x4f

    const/16 v2, 0x41

    const/16 v5, 0x6f

    const/16 v4, 0x61

    const/4 v3, 0x2

    .line 47
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 51
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    :cond_0
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 56
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe5

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    :cond_1
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x105

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x101

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 69
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    :cond_2
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe7

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x107

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x10d

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 83
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc7

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    :cond_3
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x106

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x10c

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x10f

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x10e

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 95
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe8

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xe9

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    :cond_4
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xea

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xeb

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x119

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x11b

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x113

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 107
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xc9

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    :cond_5
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xcb

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x118

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x11a

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x112

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x11f

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x11e

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 122
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xec

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    :cond_6
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xed

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xee

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xef

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x12b

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xcc

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xce

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xcf

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x130

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x12a

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x142

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x13a

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x13e

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x141

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x139

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x13d

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 149
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf1

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    :cond_7
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x144

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x148

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 155
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd1

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    :cond_8
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x143

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x147

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 161
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    :cond_9
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 166
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf6

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    :cond_a
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x153

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf8

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x151

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x14d

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 178
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    :cond_b
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x152

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x150

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x14c

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x159

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x155

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x158

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x154

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 194
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xdf

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    :cond_c
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x15b

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x15f

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x161

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x15a

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x15e

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x160

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x163

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x165

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x162

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x164

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 214
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf9

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    :cond_d
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xfa

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xfb

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_e

    .line 218
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xfc

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    :cond_e
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x16f

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x171

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x16b

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd9

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xda

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xdb

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 228
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xdc

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    :cond_f
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x16e

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x170

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x16a

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xfd

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xff

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xdd

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x178

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x17a

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x17c

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x17e

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x179

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x17b

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x17d

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa2

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xf0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xb5

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd7

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xd0

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_10

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_11

    .line 263
    :cond_10
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0x20ac

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa5

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa3

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xbf

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa6

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    :cond_11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_12

    .line 273
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xa6

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xab

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    sget-object v0, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    const/16 v1, 0xbb

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    :cond_12
    return-void
.end method

.method public static toAscii([C)Ljava/lang/String;
    .locals 5
    .parameter "cs"

    .prologue
    const/4 v4, -0x1

    .line 364
    if-nez p0, :cond_0

    .line 365
    const-string v2, ""

    .line 377
    :goto_0
    return-object v2

    .line 367
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 368
    sget-object v2, Lcom/android/mms/util/AccentFilter;->unicodeToAscii:Landroid/util/SparseIntArray;

    aget-char v3, p0, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 373
    .local v1, n:I
    if-eq v1, v4, :cond_1

    .line 374
    int-to-char v2, v1

    aput-char v2, p0, v0

    .line 367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v1           #n:I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 25
    move v6, p2

    .local v6, i:I
    if-ge v6, p3, :cond_1

    .line 27
    sub-int v0, p3, p2

    new-array v8, v0, [C

    .line 28
    .local v8, v:[C
    invoke-static {p1, p2, p3, v8, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 29
    invoke-static {v8}, Lcom/android/mms/util/AccentFilter;->toAscii([C)Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, s:Ljava/lang/String;
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 32
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, sp:Landroid/text/SpannableString;
    move-object v0, p1

    .line 33
    check-cast v0, Landroid/text/Spanned;

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 42
    .end local v4           #sp:Landroid/text/SpannableString;
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #v:[C
    :goto_0
    return-object v4

    .restart local v7       #s:Ljava/lang/String;
    .restart local v8       #v:[C
    :cond_0
    move-object v4, v7

    .line 37
    goto :goto_0

    .end local v7           #s:Ljava/lang/String;
    .end local v8           #v:[C
    :cond_1
    move-object v4, v3

    .line 42
    goto :goto_0
.end method
