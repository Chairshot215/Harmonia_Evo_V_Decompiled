.class public Lorg/apache/xml/serializer/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final CHARS:[B = null

.field public static final MASK_CONTENT:I = 0x20

.field public static final MASK_NAME:I = 0x8

.field public static final MASK_NAME_START:I = 0x4

.field public static final MASK_NCNAME:I = 0x80

.field public static final MASK_NCNAME_START:I = 0x40

.field public static final MASK_PUBID:I = 0x10

.field public static final MASK_SPACE:I = 0x2

.field public static final MASK_VALID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, -0x3

    const/16 v7, 0x31

    const/16 v6, -0x57

    const/16 v5, -0x13

    const/16 v4, 0x21

    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aput-byte v7, v0, v4

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x23

    const/16 v2, 0x26

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2f

    aput-byte v7, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3b

    aput-byte v7, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d

    aput-byte v7, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3f

    const/16 v2, 0x41

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f

    aput-byte v8, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0xb7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb7

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x132

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x132

    const/16 v2, 0x134

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x134

    const/16 v2, 0x13f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x13f

    const/16 v2, 0x141

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x141

    const/16 v2, 0x149

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x149

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x14a

    const/16 v2, 0x17f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x17f

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x180

    const/16 v2, 0x1c4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1c4

    const/16 v2, 0x1cd

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1cd

    const/16 v2, 0x1f1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4

    const/16 v2, 0x1f6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f6

    const/16 v2, 0x1fa

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fa

    const/16 v2, 0x218

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x218

    const/16 v2, 0x250

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x250

    const/16 v2, 0x2a9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2a9

    const/16 v2, 0x2bb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2bb

    const/16 v2, 0x2c2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2c2

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d0

    const/16 v2, 0x2d2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d2

    const/16 v2, 0x300

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x346

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x346

    const/16 v2, 0x360

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x360

    const/16 v2, 0x362

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x362

    const/16 v2, 0x386

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x386

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x387

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x388

    const/16 v2, 0x38b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38b

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38c

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38e

    const/16 v2, 0x3a2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a2

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a3

    const/16 v2, 0x3cf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3cf

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d0

    const/16 v2, 0x3d7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d7

    const/16 v2, 0x3da

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3da

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3db

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3dc

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3dd

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3de

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3df

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e0

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e1

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e2

    const/16 v2, 0x3f4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3f4

    const/16 v2, 0x401

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x401

    const/16 v2, 0x40d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x40d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x40e

    const/16 v2, 0x450

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x450

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x451

    const/16 v2, 0x45d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x45d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x45e

    const/16 v2, 0x482

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x482

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x483

    const/16 v2, 0x487

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x487

    const/16 v2, 0x490

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x490

    const/16 v2, 0x4c5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c5

    const/16 v2, 0x4c7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c7

    const/16 v2, 0x4c9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c9

    const/16 v2, 0x4cb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4cb

    const/16 v2, 0x4cd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4cd

    const/16 v2, 0x4d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4d0

    const/16 v2, 0x4ec

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4ec

    const/16 v2, 0x4ee

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4ee

    const/16 v2, 0x4f6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4f6

    const/16 v2, 0x4f8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4f8

    const/16 v2, 0x4fa

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4fa

    const/16 v2, 0x531

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x531

    const/16 v2, 0x557

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x557

    const/16 v2, 0x559

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x559

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x55a

    const/16 v2, 0x561

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x561

    const/16 v2, 0x587

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x587

    const/16 v2, 0x591

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x591

    const/16 v2, 0x5a2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5a2

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5a3

    const/16 v2, 0x5ba

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5ba

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5bb

    const/16 v2, 0x5be

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5be

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5bf

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c0

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c1

    const/16 v2, 0x5c3

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c3

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c4

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c5

    const/16 v2, 0x5d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5d0

    const/16 v2, 0x5eb

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5eb

    const/16 v2, 0x5f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f0

    const/16 v2, 0x5f3

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f3

    const/16 v2, 0x621

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x621

    const/16 v2, 0x63b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x63b

    const/16 v2, 0x640

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x640

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x641

    const/16 v2, 0x64b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x64b

    const/16 v2, 0x653

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x653

    const/16 v2, 0x660

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x660

    const/16 v2, 0x66a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x66a

    const/16 v2, 0x670

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x670

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x671

    const/16 v2, 0x6b8

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6b8

    const/16 v2, 0x6ba

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ba

    const/16 v2, 0x6bf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6bf

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6c0

    const/16 v2, 0x6cf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6cf

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d0

    const/16 v2, 0x6d4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d4

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d5

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d6

    const/16 v2, 0x6e5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e5

    const/16 v2, 0x6e7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e7

    const/16 v2, 0x6e9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ea

    const/16 v2, 0x6ee

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ee

    const/16 v2, 0x6f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6f0

    const/16 v2, 0x6fa

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6fa

    const/16 v2, 0x901

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x901

    const/16 v2, 0x904

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x904

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x905

    const/16 v2, 0x93a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93a

    const/16 v2, 0x93c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93c

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93d

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93e

    const/16 v2, 0x94e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x94e

    const/16 v2, 0x951

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x951

    const/16 v2, 0x955

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x955

    const/16 v2, 0x958

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x958

    const/16 v2, 0x962

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x962

    const/16 v2, 0x964

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x964

    const/16 v2, 0x966

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x966

    const/16 v2, 0x970

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x970

    const/16 v2, 0x981

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x981

    const/16 v2, 0x984

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x984

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x985

    const/16 v2, 0x98d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x98d

    const/16 v2, 0x98f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x98f

    const/16 v2, 0x991

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x991

    const/16 v2, 0x993

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x993

    const/16 v2, 0x9a9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9a9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9aa

    const/16 v2, 0x9b1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b1

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b2

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b3

    const/16 v2, 0x9b6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b6

    const/16 v2, 0x9ba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9ba

    const/16 v2, 0x9bc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9bc

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9bd

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9be

    const/16 v2, 0x9c5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c5

    const/16 v2, 0x9c7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c7

    const/16 v2, 0x9c9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c9

    const/16 v2, 0x9cb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9cb

    const/16 v2, 0x9ce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9ce

    const/16 v2, 0x9d7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9d7

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9d8

    const/16 v2, 0x9dc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9dc

    const/16 v2, 0x9de

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9de

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9df

    const/16 v2, 0x9e2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e2

    const/16 v2, 0x9e4

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e4

    const/16 v2, 0x9e6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e6

    const/16 v2, 0x9f0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9f0

    const/16 v2, 0x9f2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9f2

    const/16 v2, 0xa02

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa02

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa03

    const/16 v2, 0xa05

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa05

    const/16 v2, 0xa0b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa0b

    const/16 v2, 0xa0f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa0f

    const/16 v2, 0xa11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa11

    const/16 v2, 0xa13

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa13

    const/16 v2, 0xa29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa29

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa2a

    const/16 v2, 0xa31

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa31

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa32

    const/16 v2, 0xa34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa34

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa35

    const/16 v2, 0xa37

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa37

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa38

    const/16 v2, 0xa3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3a

    const/16 v2, 0xa3c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3c

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3e

    const/16 v2, 0xa43

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa43

    const/16 v2, 0xa47

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa47

    const/16 v2, 0xa49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa49

    const/16 v2, 0xa4b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa4b

    const/16 v2, 0xa4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa4e

    const/16 v2, 0xa59

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa59

    const/16 v2, 0xa5d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5e

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5f

    const/16 v2, 0xa66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa66

    const/16 v2, 0xa72

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa72

    const/16 v2, 0xa75

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa75

    const/16 v2, 0xa81

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa81

    const/16 v2, 0xa84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa84

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa85

    const/16 v2, 0xa8c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8c

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8d

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8e

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8f

    const/16 v2, 0xa92

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa92

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa93

    const/16 v2, 0xaa9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaa9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaaa

    const/16 v2, 0xab1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab1

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab2

    const/16 v2, 0xab4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab4

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab5

    const/16 v2, 0xaba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaba

    const/16 v2, 0xabc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabc

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabd

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabe

    const/16 v2, 0xac6

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xac6

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xac7

    const/16 v2, 0xaca

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaca

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xacb

    const/16 v2, 0xace

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xace

    const/16 v2, 0xae0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae0

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae1

    const/16 v2, 0xae6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae6

    const/16 v2, 0xaf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaf0

    const/16 v2, 0xb01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb01

    const/16 v2, 0xb04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb04

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb05

    const/16 v2, 0xb0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb0d

    const/16 v2, 0xb0f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb0f

    const/16 v2, 0xb11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb11

    const/16 v2, 0xb13

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb13

    const/16 v2, 0xb29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb29

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb2a

    const/16 v2, 0xb31

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb31

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb32

    const/16 v2, 0xb34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb34

    const/16 v2, 0xb36

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb36

    const/16 v2, 0xb3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3a

    const/16 v2, 0xb3c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3c

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3d

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3e

    const/16 v2, 0xb44

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb44

    const/16 v2, 0xb47

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb47

    const/16 v2, 0xb49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb49

    const/16 v2, 0xb4b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb4b

    const/16 v2, 0xb4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb4e

    const/16 v2, 0xb56

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb56

    const/16 v2, 0xb58

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb58

    const/16 v2, 0xb5c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5c

    const/16 v2, 0xb5e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5e

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5f

    const/16 v2, 0xb62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb62

    const/16 v2, 0xb66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb66

    const/16 v2, 0xb70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb70

    const/16 v2, 0xb82

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb82

    const/16 v2, 0xb84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb84

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb85

    const/16 v2, 0xb8b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8b

    const/16 v2, 0xb8e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8e

    const/16 v2, 0xb91

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb91

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb92

    const/16 v2, 0xb96

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb96

    const/16 v2, 0xb99

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb99

    const/16 v2, 0xb9b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9b

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9c

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9e

    const/16 v2, 0xba0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba0

    const/16 v2, 0xba3

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba3

    const/16 v2, 0xba5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba5

    const/16 v2, 0xba8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba8

    const/16 v2, 0xbab

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbab

    const/16 v2, 0xbae

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbae

    const/16 v2, 0xbb6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbb6

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbb7

    const/16 v2, 0xbba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbba

    const/16 v2, 0xbbe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbbe

    const/16 v2, 0xbc3

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc3

    const/16 v2, 0xbc6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc6

    const/16 v2, 0xbc9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbca

    const/16 v2, 0xbce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbce

    const/16 v2, 0xbd7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbd7

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbd8

    const/16 v2, 0xbe7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbe7

    const/16 v2, 0xbf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbf0

    const/16 v2, 0xc01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc01

    const/16 v2, 0xc04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc04

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc05

    const/16 v2, 0xc0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0e

    const/16 v2, 0xc11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc11

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc12

    const/16 v2, 0xc29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc29

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc2a

    const/16 v2, 0xc34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc34

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc35

    const/16 v2, 0xc3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc3a

    const/16 v2, 0xc3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc3e

    const/16 v2, 0xc45

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc45

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc46

    const/16 v2, 0xc49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc49

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc4a

    const/16 v2, 0xc4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc4e

    const/16 v2, 0xc55

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc55

    const/16 v2, 0xc57

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc57

    const/16 v2, 0xc60

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc60

    const/16 v2, 0xc62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc62

    const/16 v2, 0xc66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc66

    const/16 v2, 0xc70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc70

    const/16 v2, 0xc82

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc82

    const/16 v2, 0xc84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc84

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc85

    const/16 v2, 0xc8d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc8d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc8e

    const/16 v2, 0xc91

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc91

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc92

    const/16 v2, 0xca9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xca9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcaa

    const/16 v2, 0xcb4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcb4

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcb5

    const/16 v2, 0xcba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcba

    const/16 v2, 0xcbe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcbe

    const/16 v2, 0xcc5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc5

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc6

    const/16 v2, 0xcc9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcca

    const/16 v2, 0xcce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcce

    const/16 v2, 0xcd5

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcd5

    const/16 v2, 0xcd7

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcd7

    const/16 v2, 0xcde

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcde

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcdf

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce0

    const/16 v2, 0xce2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce2

    const/16 v2, 0xce6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce6

    const/16 v2, 0xcf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcf0

    const/16 v2, 0xd02

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd02

    const/16 v2, 0xd04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd04

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd05

    const/16 v2, 0xd0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd0d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd0e

    const/16 v2, 0xd11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd11

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd12

    const/16 v2, 0xd29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd29

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd2a

    const/16 v2, 0xd3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd3a

    const/16 v2, 0xd3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd3e

    const/16 v2, 0xd44

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd44

    const/16 v2, 0xd46

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd46

    const/16 v2, 0xd49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd49

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd4a

    const/16 v2, 0xd4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd4e

    const/16 v2, 0xd57

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd57

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd58

    const/16 v2, 0xd60

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd60

    const/16 v2, 0xd62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd62

    const/16 v2, 0xd66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd66

    const/16 v2, 0xd70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd70

    const/16 v2, 0xe01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe01

    const/16 v2, 0xe2f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe2f

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe30

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe31

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe32

    const/16 v2, 0xe34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe34

    const/16 v2, 0xe3b

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe3b

    const/16 v2, 0xe40

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe40

    const/16 v2, 0xe46

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe46

    const/16 v2, 0xe4f

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe4f

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe50

    const/16 v2, 0xe5a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe5a

    const/16 v2, 0xe81

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe81

    const/16 v2, 0xe83

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe83

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe84

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe85

    const/16 v2, 0xe87

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe87

    const/16 v2, 0xe89

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe89

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8a

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8b

    const/16 v2, 0xe8d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8d

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8e

    const/16 v2, 0xe94

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe94

    const/16 v2, 0xe98

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe98

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe99

    const/16 v2, 0xea0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea0

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea1

    const/16 v2, 0xea4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea4

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea5

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea6

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea7

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea8

    const/16 v2, 0xeaa

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeaa

    const/16 v2, 0xeac

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeac

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xead

    const/16 v2, 0xeaf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeaf

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb0

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb1

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb2

    const/16 v2, 0xeb4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb4

    const/16 v2, 0xeba

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeba

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebb

    const/16 v2, 0xebd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebd

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebe

    const/16 v2, 0xec0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec0

    const/16 v2, 0xec5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec5

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec6

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec7

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec8

    const/16 v2, 0xece

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xece

    const/16 v2, 0xed0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xed0

    const/16 v2, 0xeda

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeda

    const/16 v2, 0xf18

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf18

    const/16 v2, 0xf1a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf1a

    const/16 v2, 0xf20

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf20

    const/16 v2, 0xf2a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf2a

    const/16 v2, 0xf35

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf35

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf36

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf37

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf38

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf39

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf3a

    const/16 v2, 0xf3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf3e

    const/16 v2, 0xf40

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf40

    const/16 v2, 0xf48

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf48

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf49

    const/16 v2, 0xf6a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf6a

    const/16 v2, 0xf71

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf71

    const/16 v2, 0xf85

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf85

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf86

    const/16 v2, 0xf8c

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf8c

    const/16 v2, 0xf90

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf90

    const/16 v2, 0xf96

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf96

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf97

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf98

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf99

    const/16 v2, 0xfae

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfae

    const/16 v2, 0xfb1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb1

    const/16 v2, 0xfb8

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb8

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb9

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfba

    const/16 v2, 0x10a0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10a0

    const/16 v2, 0x10c6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10c6

    const/16 v2, 0x10d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10d0

    const/16 v2, 0x10f7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10f7

    const/16 v2, 0x1100

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1100

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1101

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1102

    const/16 v2, 0x1104

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1104

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1105

    const/16 v2, 0x1108

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1108

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1109

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110a

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110b

    const/16 v2, 0x110d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110e

    const/16 v2, 0x1113

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1113

    const/16 v2, 0x113c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113c

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113e

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113f

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1140

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1141

    const/16 v2, 0x114c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114c

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114d

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114e

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114f

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1150

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1151

    const/16 v2, 0x1154

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1154

    const/16 v2, 0x1156

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1156

    const/16 v2, 0x1159

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1159

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x115a

    const/16 v2, 0x115f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x115f

    const/16 v2, 0x1162

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1162

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1163

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1164

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1165

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1166

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1167

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1168

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1169

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116a

    const/16 v2, 0x116d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116d

    const/16 v2, 0x116f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116f

    const/16 v2, 0x1172

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1172

    const/16 v2, 0x1174

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1174

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1175

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1176

    const/16 v2, 0x119e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x119e

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x119f

    const/16 v2, 0x11a8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11a8

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11a9

    const/16 v2, 0x11ab

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ab

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ac

    const/16 v2, 0x11ae

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ae

    const/16 v2, 0x11b0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b0

    const/16 v2, 0x11b7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b7

    const/16 v2, 0x11b9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b9

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ba

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11bb

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11bc

    const/16 v2, 0x11c3

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11c3

    const/16 v2, 0x11eb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11eb

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ec

    const/16 v2, 0x11f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f0

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f1

    const/16 v2, 0x11f9

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f9

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11fa

    const/16 v2, 0x1e00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1e00

    const/16 v2, 0x1e9c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1e9c

    const/16 v2, 0x1ea0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ea0

    const/16 v2, 0x1efa

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1efa

    const/16 v2, 0x1f00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f00

    const/16 v2, 0x1f16

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f16

    const/16 v2, 0x1f18

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f18

    const/16 v2, 0x1f1e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1e

    const/16 v2, 0x1f20

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f20

    const/16 v2, 0x1f46

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f46

    const/16 v2, 0x1f48

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f48

    const/16 v2, 0x1f4e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4e

    const/16 v2, 0x1f50

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f50

    const/16 v2, 0x1f58

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f58

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f59

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5a

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5b

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5c

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5d

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5e

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5f

    const/16 v2, 0x1f7e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f7e

    const/16 v2, 0x1f80

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f80

    const/16 v2, 0x1fb5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb5

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb6

    const/16 v2, 0x1fbd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbd

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbe

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbf

    const/16 v2, 0x1fc2

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc2

    const/16 v2, 0x1fc5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc5

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc6

    const/16 v2, 0x1fcd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fcd

    const/16 v2, 0x1fd0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd0

    const/16 v2, 0x1fd4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd4

    const/16 v2, 0x1fd6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd6

    const/16 v2, 0x1fdc

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fdc

    const/16 v2, 0x1fe0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fe0

    const/16 v2, 0x1fed

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fed

    const/16 v2, 0x1ff2

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff2

    const/16 v2, 0x1ff5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff5

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff6

    const/16 v2, 0x1ffd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ffd

    const/16 v2, 0x20d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20d0

    const/16 v2, 0x20dd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20dd

    const/16 v2, 0x20e1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20e1

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20e2

    const/16 v2, 0x2126

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2126

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2127

    const/16 v2, 0x212a

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212a

    const/16 v2, 0x212c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212c

    const/16 v2, 0x212e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212e

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212f

    const/16 v2, 0x2180

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2180

    const/16 v2, 0x2183

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2183

    const/16 v2, 0x3005

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3005

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3006

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3007

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3008

    const/16 v2, 0x3021

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3021

    const/16 v2, 0x302a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x302a

    const/16 v2, 0x3030

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3030

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3031

    const/16 v2, 0x3036

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3036

    const/16 v2, 0x3041

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3041

    const/16 v2, 0x3095

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3095

    const/16 v2, 0x3099

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3099

    const/16 v2, 0x309b

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309b

    const/16 v2, 0x309d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309d

    const/16 v2, 0x309f

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309f

    const/16 v2, 0x30a1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30a1

    const/16 v2, 0x30fb

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30fb

    aput-byte v4, v0, v1

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30fc

    const/16 v2, 0x30ff

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30ff

    const/16 v2, 0x3105

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3105

    const/16 v2, 0x312d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x312d

    const/16 v2, 0x4e00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4e00

    const v2, 0x9fa6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0x9fa6

    const v2, 0xac00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xac00

    const v2, 0xd7a4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xd7a4

    const v2, 0xd800

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xe000

    const v2, 0xfffe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highSurrogate(I)C
    .locals 2

    const/high16 v0, 0x1

    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isContent(I)Z
    .locals 2

    const/high16 v1, 0x1

    if-ge p0, v1, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    :cond_0
    if-gt v1, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighSurrogate(I)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvalid(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowSurrogate(I)Z
    .locals 1

    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMarkup(I)Z
    .locals 1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNCName(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNCNameStart(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isName(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameStart(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPubid(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupplemental(I)Z
    .locals 1

    const/high16 v0, 0x1

    if-lt p0, v0, :cond_0

    const v0, 0x10ffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(I)Z
    .locals 2

    const/high16 v1, 0x1

    if-ge p0, v1, :cond_0

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-gt v1, p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidIANAEncoding(Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_1

    :cond_0
    if-lt v0, v7, :cond_5

    if-gt v0, v8, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_2

    if-le v0, v6, :cond_6

    :cond_2
    if-lt v0, v7, :cond_3

    if-le v0, v8, :cond_6

    :cond_3
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_6

    :cond_4
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_6

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_6

    :cond_5
    :goto_1
    return v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isValidJavaEncoding(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-le v0, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7a

    if-le v0, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-le v0, v4, :cond_4

    :cond_2
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_4

    :cond_3
    :goto_1
    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isValidNCName(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidNmtoken(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static lowSurrogate(I)C
    .locals 2

    const/high16 v0, 0x1

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static supplemental(CC)I
    .locals 2

    const v0, 0xd800

    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x400

    const v1, 0xdc00

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
